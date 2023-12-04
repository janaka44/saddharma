import logging

from django.core.paginator import Paginator
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render
from django.utils.translation import gettext as _

from .models import Book, Author, \
    BOOK_CATEGORIES_L1, BOOK_CATEGORIES_L2, BOOK_CATEGORIES_L3

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.DEBUG)

ROWS_PER_PAGE = 25


def set_base_content(request):
    context = {
        'header_site_title' : _('Saddharma'),
        'navbar_menu_home' : _('Home'),
        'navbar_menu_about' : _('About'),
        'navbar_menu_books' : _('Books'),
        'navbar_menu_books_title' : _('Search by Title'),
        'navbar_menu_books_author' : _('Search by Author'),
        'navbar_menu_books_library' : _('Search by Library'),
        'navbar_menu_books_upload' : _('Upload Books'),
        'navbar_menu_books_review' : _('Review Books'),
        'navbar_menu_other' : _('Other'),
        'navbar_menu_other_authors' : _('Authors'),
        'navbar_menu_other_libraries' : _('Libraries'),
        'navbar_menu_myaccount' : _('My Account'),
        'navbar_menu_myaccount_bookmarks' : _('Bookmarks'),
        'navbar_menu_myaccount_wishlist' : _('Wishlist'),
        'navbar_menu_myaccount_mybooks' : _('My Uploads'),
        'navbar_menu_contact' : _('Contact'),
        'footer_description' : _('FOOTER_DESCRIPTION'),
        'footer_copyright_msg' : _('COPYRIGHT_MESSAGE'),
        'footer_quicklinks' : _('Quick Links'),
		'footer_quicklinks_about' : _('About'),
		'footer_quicklink_title' : _('Search by Title'),
		'footer_quicklink_author' : _('Search by Author'),
		'footer_quicklink_library' : _('Search by Library'),
        'footer_myaccount' : _('My Account'),
		'footer_myaccount_bookmarks' : _('Bookmarks'),
		'footer_myaccount_wishlist' : _('Wishlist'),
        'footer_support' : _('Support'),
		'footer_support_contacts' : _('Contact us'),
        'footer_support_terms' : _('Terms & Conditions'),
     }
    return context


def home_view(request):
    category1_rows = BOOK_CATEGORIES_L1
    category2_rows = BOOK_CATEGORIES_L2
    language_rows = BOOK_CATEGORIES_L3
    context = {
        'section_home_page_about_header' : _('HOME_PAGE_ABOUT_HEADER'),
        'section_home_page_about_description' : _('HOME_PAGE_ABOUT_DESCRIPTION'),
        'language_rows': language_rows,
        'category1_rows': category1_rows,
        'category2_rows': category2_rows,
    }

    for row in BOOK_CATEGORIES_L3:
        print(f'{row} : {row[0]} = {row[1]} ')

    context.update(set_base_content(request))
    return render(request, "template.2/index.html", context)


def book_search(request):
    from django.db.models import Q

    page_num = request.GET.get('page', 1)
    search_query = request.GET.get('search', "")

    catalog_no = request.GET.get('catalog_no', "")
    title = request.GET.get('title', "")
    author = request.GET.get('author', "")
    language = request.GET.get('language', "")
    published_year = request.GET.get('published_year', "")
    pages = request.GET.get('pages', "")
    category_L1 = request.GET.get('category_L1', "")
    category_L2 = request.GET.get('category_L2', "")

    filters = Q()
    if search_query:
        filters &= Q(title__contains=search_query)
    if catalog_no:
        filters &= Q(catalog_no=catalog_no)
    if title:
        filters &= Q(title__contains=title)
    if author:
        filters &= Q(author__author__contains=author)
    if language:
        filters &= Q(language=language)
    if published_year:
        filters &= Q(published_year__year=published_year)
    if pages:
        filters &= Q(pages=pages)
    if category_L1:
        filters &= Q(category_L1=category_L1)
    if category_L2:
        filters &= Q(category_L2=category_L2)

    print(request.get_full_path())
    rows = Book.objects.filter(filters).order_by('catalog_no')

    paginator = Paginator(rows, ROWS_PER_PAGE)

    try:
        page_obj = paginator.page(page_num)
    except PageNotAnInteger:
        # if page is not an integer, deliver the first page
        page_obj = paginator.page(1)
    except EmptyPage:
        # if the page is out of range, deliver the last page
        page_obj = paginator.page(paginator.num_pages)
    # --

    context = {
        'rows': page_obj,
        'fullpath': request.get_full_path(),
    }
    print(f'row count = {len(rows)}')

    # context.update(set_base_content(request))
    return render(request, "template.2/search/book-index.html", context)


def search_view(request):
    rows = []
    
    context = {
        'rows' : rows,
    }
    context.update(set_base_content(request))
    return render(request, "template.2/search/search.html", context)


def book_reader_view(request, id):
    context = {
    }
    context.update(set_base_content(request))
    return render(request, "template.2/reader/bookReader.html", context)


def import_sources(request):
    from core.models import Book, BookTemp, BOOK_CATEGORIES_L3, SourceLibrary
    sources = BookTemp.objects.distinct('source')
    n = 1
    print(f'count={len(sources)}')
    for b in sources:
        print(f'{n}. catalog_no = {b.catalog_no} source={b.source}')
        if b.source is not None:
            newsource = SourceLibrary()
            newsource.source_library = b.source
            newsource.save()
        n=n+1

    context = {
        'rows': {
            'line1': f'processed {n} rows.'
        }
    }
    context.update(set_base_content(request))
    return render(request, "template.2/empty.html", context)


def import_books(request):
    import datetime
    from django.core.exceptions import ObjectDoesNotExist
    from core.models import Book, BookTemp, BOOK_CATEGORIES_L1, BOOK_CATEGORIES_L2, BOOK_CATEGORIES_L3, SourceLibrary

    temp_books = BookTemp.objects.filter().order_by('id')
    err_rows = []
    no_author_list = {}
    no_cat1_list = {}
    no_cat2_list = {}

    n = 0
    p = 0

    no_catalog_no = 0
    no_title = 0
    no_author = 0
    no_cat1 = 0
    no_cat2 = 0
    no_source = 0
    no_lang = 0
    book_start = 0
    book_end = 1600

    summary_line = f'Processing books #{book_start} - #{book_end}'
    for b in temp_books:
        n += 1
        if n < book_start:
            continue
        if n > book_end:
            break

        if b.title is None:
            no_title += 1
            continue

        if b.catalog_no is None:
            no_catalog_no += 1
            continue

        b.pages = b.pages if b.pages is not None else -1
        b.published_year = b.published_year if b.published_year is not None else datetime.datetime(1700, 1, 1)
        # print(f'>> Excel {n} catalog_no={b.catalog_no}, title = {b.title}, author={b.author_name}, pages={b.pages}, year=' + str(b.published_year.strftime('%Y')))
        # print(f'>> Excel {n} catalog_no={b.catalog_no}')

        vol = 1
        existingBookCount = Book.objects.filter(catalog_no=b.catalog_no).count()
        if (existingBookCount > 0):
            vol = existingBookCount + 1
            #print(f'Book found, catalog_no={b.catalog_no}, increasing volume...{vol}')

        try:
            if b.author_name is not None:
                author = Author.objects.get(author=b.author_name)
            else:
                author = None
                no_author = no_author + 1

        except ObjectDoesNotExist:
            if b.author_name is not None:
                print(f'Author {b.author_name} not found')
                author = None
                no_author = no_author + 1
                if b.author_name in no_author_list:
                    no_author_list[b.author_name] += 1
                else:
                    no_author_list[b.author_name] = 1

        newbook = Book.create(catalog_no=b.catalog_no, title=b.title, author=author, pages=b.pages, year=b.published_year)
        newbook.volume = vol
        # year = b.published_year.strftime('%Y')

        lang = [item for item in BOOK_CATEGORIES_L3 if item[1] == b.language]
        if len(lang) == 1:
            newbook.language = lang[0][0]
        else:
            if b.language is not None:
                no_lang += 1
                print(f'Language :{b.language} not found')

        if b.source is not None:
            try:
                source_lib = SourceLibrary.objects.get(source_library=b.source)
            except ObjectDoesNotExist:
                if b.source is not None:
                    no_source += 1
                    print(f'Source not found: {b.source}')
            if source_lib is not None:
                newbook.source_library = source_lib

        cat_L1 = [item for item in BOOK_CATEGORIES_L1 if item[1] == b.category1]
        if len(cat_L1) == 1:
            newbook.category_L1 = cat_L1[0][0]
        else:
            if b.category1 is not None:
                no_cat1 += 1
                print(f'Cat 1 :{b.category1} not found')
                if b.category1 in no_cat1_list:
                    no_cat1_list[b.category1] += 1
                else:
                    no_cat1_list[b.category1] = 1
                err_rows.append(f'Cat 1 :{b.category1} not found')

        # cat_L2 = [item for item in BOOK_CATEGORIES_L2 if item[0][3:5] == newbook.category_L1[3:5] and item[1] == b.category2]
        cat_L2 = [item for item in BOOK_CATEGORIES_L2 if item[1] == b.category2]
        if len(cat_L2) == 1:
            newbook.category_L2 = cat_L2[0][0]
        else:
            if b.category2 is not None:
                no_cat2 += 1
                print(f'Cat 2 :{b.category2} not found')
                print(f'- newbook.category_L1 = {newbook.category_L1[3:5]}')
                if b.category2 in no_cat2_list:
                    no_cat2_list[b.category2] += 1
                else:
                    no_cat2_list[b.category2] = 1
                err_rows.append(f'Cat 2 :{b.category2} not found')

        #print(f'>> Save {n}: catalog_no={newbook.catalog_no}, title = {newbook.title}, author={newbook.author.author}, pages={newbook.pages}, year=' + str(author.published_year.strftime('%Y')) + f', language={newbook.language}')
        newbook.save()

        p += 1

    context = {
        'line1': '<b>' + summary_line + f'\n Processed {p} books.</b>',
        'line2': f'*** <b>Author</b>: Books without Author = {no_author}\n{getBar(no_author)}',
        'line3': f'*** <b>Language</b>: {no_lang} records missing.\n{getBar(no_lang)}',
        'line4': f'*** <b>Source</b>: {no_source} records missing.\n{getBar(no_source)}',
        'line5': f'*** <b>Category 1</b>: {no_cat1} records missing.\n{getBar(no_cat1)}',
        'line6': f'*** <b>Category 2</b>: {no_cat2} records missing\n{getBar(no_cat2)}',
        'line7': f'*** <b>Title</b>: Books without title = {no_title}\n{getBar(no_title)}',
        'line8': f'*** <b>Catalog No</b>: Books without Catalog No = {no_catalog_no}.\n{getBar(no_catalog_no)}',
        'no_author_list': no_author_list,
        'no_cat1_list': no_cat1_list,
        'no_cat2_list': no_cat2_list,
        # 'errors': err_rows
    }
    # print(context)
    context.update(set_base_content(request))
    return render(request, "template.2/empty.html", context)


def getBar(n):
    span_bar = f'<div style="background-color:red; width:{2 * n}px">&nbsp;</div>'
    return span_bar