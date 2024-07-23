import logging

from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse
from django.shortcuts import render
from django.utils.translation import gettext as _
from django.db.models import Q

from .models import Book, Author, Comments, \
    BOOK_CATEGORIES_L1, BOOK_CATEGORIES_L2, BOOK_CATEGORIES_L3

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.DEBUG)

ROWS_PER_PAGE = 25


def set_base_content(request):
    context = {
        'header_site_title': _('Saddharma'),
        'navbar_menu_home': _('Home'),
        'navbar_menu_about': _('About'),
        'navbar_menu_books': _('Books'),
        'navbar_menu_books_title': _('Search by Title'),
        'navbar_menu_books_author': _('Search by Author'),
        'navbar_menu_books_library': _('Search by Library'),
        'navbar_menu_books_upload': _('Upload Books'),
        'navbar_menu_books_review': _('Review Books'),
        'navbar_menu_other': _('Other'),
        'navbar_menu_other_authors': _('Authors'),
        'navbar_menu_other_libraries': _('Libraries'),
        'navbar_menu_myaccount': _('My Account'),
        'navbar_menu_myaccount_bookmarks': _('Bookmarks'),
        'navbar_menu_myaccount_wishlist': _('Wishlist'),
        'navbar_menu_myaccount_mybooks': _('My Uploads'),
        'navbar_menu_contact': _('Contact'),
        'footer_description': _('FOOTER_DESCRIPTION'),
        'footer_copyright_msg': _('COPYRIGHT_MESSAGE'),
        'footer_quicklinks': _('Quick Links'),
        'footer_quicklinks_about': _('About'),
        'footer_quicklink_title': _('Search by Title'),
        'footer_quicklink_author': _('Search by Author'),
        'footer_quicklink_library': _('Search by Library'),
        'footer_myaccount': _('My Account'),
        'footer_myaccount_bookmarks': _('Bookmarks'),
        'footer_myaccount_wishlist': _('Wishlist'),
        'footer_support': _('Support'),
        'footer_support_contacts': _('Contact us'),
        'footer_support_terms': _('Terms & Conditions'),
    }
    return context


def home_view(request):
    from django.db.models import Count, Sum

    # fetch lists for dropdowns in detail search area
    category1_rows = BOOK_CATEGORIES_L1
    category2_rows = BOOK_CATEGORIES_L2
    language_rows = BOOK_CATEGORIES_L3

    # fetch data for book category tiles
    filters = Q()
    # for category in BOOK_CATEGORIES_L1:
    book_category_data_rows = Book.objects \
        .values('category_L1') \
        .annotate(count=Count('category_L1')) \
        .order_by('category_L1')

    book_category_2_data_rows = Book.objects \
        .values('category_L2') \
        .annotate(count=Count('category_L2')) \
        .order_by('category_L2')

    # book languages
    book_language_data_rows = Book.objects \
        .values('language') \
        .annotate(count=Count('language')) \
        .order_by('language')

    total_books = book_category_data_rows.aggregate(Sum('count'))

    # books by year range
    date_range_count_list = {}
    get_count_by_year_range(1, date_range_count_list, "1800", "1850", total_books['count__sum'])
    get_count_by_year_range(2, date_range_count_list, "1851", "1900", total_books['count__sum'])
    get_count_by_year_range(3, date_range_count_list, "1901", "1950", total_books['count__sum'])
    get_count_by_year_range(4, date_range_count_list, "1951", "2000", total_books['count__sum'])
    get_count_by_year_range(5, date_range_count_list, "2001", "2050", total_books['count__sum'])
    get_count_by_year_range(6, date_range_count_list, "1700", "1700", total_books['count__sum'])

    category_images = {
        'L1_C1': 'candle-book.jpg',
        'L1_C2': 'banner1.jpg',
        'L1_C3': 'banner3.jpg',
        'L1_C4': 'library-1.jpg',
        'L1_C5': 'banner2.jpg',
        'L1_C6': 'library-2.jpg',
        'L1_C7': 'old_library.jpg',
    }

    # add category image to QuerySet
    book_category_rows = extract_category_count_list(total_books['count__sum'], BOOK_CATEGORIES_L1,
                                                     book_category_data_rows, 'category_L1', category_images)

    book_category_2_rows = extract_category_count_list(total_books['count__sum'], BOOK_CATEGORIES_L2,
                                                       book_category_2_data_rows, 'category_L2')

    book_language_rows = extract_category_count_list(total_books['count__sum'], BOOK_CATEGORIES_L3,
                                                     book_language_data_rows, 'language')

    # most read 8 books
    most_read_book_rows = Book.objects.order_by('-view_count')[:8]
    for book in most_read_book_rows:
        book.book_size = convert_size_to_book_size(book.size)
        if book.published_year.strftime('%Y') == "1700":
            book.year = ""
        else:
            book.year = book.published_year.strftime('%Y')

    context = {
        'section_home_page_about_header': _('HOME_PAGE_ABOUT_HEADER'),
        'section_home_page_about_description': _('HOME_PAGE_ABOUT_DESCRIPTION'),
        'language_rows': language_rows,
        'category1_rows': category1_rows,
        'category2_rows': category2_rows,
        'most_read_books': most_read_book_rows,
        'book_category_rows': book_category_rows,
        'book_category_2_rows': book_category_2_rows,
        'book_language_rows': book_language_rows,
        'date_range_count_list': date_range_count_list,
        'total_books': total_books,
    }

    context.update(set_base_content(request))
    return render(request, "template.2/index.html", context)


def get_count_by_year_range(rownum, date_range_count_list, start_year, end_year, total_books):
    book_year_range_data_rows = Book.objects \
        .filter(published_year__range=[f"{start_year}-01-01", f"{end_year}-01-01"])
    range_count = int(book_year_range_data_rows.count())

    count_list = {}
    if start_year != '1700':
        count_list['year_range'] = f'{start_year}-{end_year}'
    else:
        count_list['year_range'] = 'N/A'
    count_list['count'] = range_count
    count_list['date_range1'] = f"{start_year}-01-01"
    count_list['date_range2'] = f"{end_year}-01-01"
    count_list['perc'] = round((range_count / total_books) * 100)
    date_range_count_list[f'row{rownum}'] = count_list
    return date_range_count_list


def extract_category_count_list(total_books, enum_list, book_category_data_rows, cat_col_name, category_images = {}):
    list_sum = {}
    i = 0
    for row in book_category_data_rows:
        i = i + 1
        if row[cat_col_name] is not None:
            new_cat = {}
            new_cat['cat'] = row[cat_col_name]
            if category_images:
                new_cat['image'] = category_images[row[cat_col_name]]
            new_cat['count'] = row['count']
            new_cat['perc'] = round((row['count']/total_books)*100)
            new_cat['title'] = [item for item in enum_list if item[0] == row[cat_col_name]][0][1]
            list_sum[f'row{i}'] = new_cat

    return list_sum


def book_search(request):
    # Common search params
    page_num = request.GET.get('page', 1)
    search_query = request.GET.get('search', "")
    date_range1 = request.GET.get('date_range1', "")
    date_range2 = request.GET.get('date_range2', "")

    # Column search params
    catalog_no = request.GET.get('catalog_no', "")
    title = request.GET.get('title', "")
    author = request.GET.get('author', "")
    language = request.GET.get('language', "")
    published_year = request.GET.get('published_year', "")
    pages = request.GET.get('pages', "")
    category_L1 = request.GET.get('category_L1', "")
    category_L2 = request.GET.get('category_L2', "")

    # Common params
    page = request.GET.get('page', "1")
    sort = request.GET.get('sort', "catalog_no")

    filters = Q()
    if date_range1 and date_range2:
        filters &= Q(published_year__range=[f"{date_range1}", f"{date_range2}"])
    if search_query:
        filters &= Q(title__contains=search_query) | Q(catalog_no=search_query)
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
        value_list = category_L1.split(',')
        print(value_list)
        for value in value_list:
            filters |= Q(category_L1=value)
    if category_L2:
        value_list = category_L2.split(',')
        print(value_list)
        for value in value_list:
            filters |= Q(category_L2=value)

    # print(request.get_full_path())
    print(f'filters = {filters}')
    rows = Book.objects.filter(filters).order_by(sort)
    for row in rows:
        # convert KB into MB without decimals
        row.book_size = convert_size_to_book_size(row.size)

    paginator = Paginator(rows, ROWS_PER_PAGE)

    try:
        page_obj = paginator.page(page_num)
    except PageNotAnInteger:
        # if page is not an integer, deliver the first page
        page_obj = paginator.page(1)
    except EmptyPage:
        # if the page is out of range, deliver the last page
        page_obj = paginator.page(paginator.num_pages)


    # fullpath = request.build_absolute_uri(f"/search/?search={search_query}&sort={sort}")
    fullpath = request.get_full_path()

    context = {
        'rows': page_obj,
        'start_row': page_obj.start_index(),
        'end_row': page_obj.end_index(),
        'search_query': search_query,
        'book_url': f'https://books.saddharma.org',
        'fullpath': fullpath,
    }
    print(f'row count = {len(rows)}')

    # context.update(set_base_content(request))
    return render(request, "template.2/search/search-results.html", context)


def convert_size_to_book_size(size_in_bytes):
    if size_in_bytes is None:
        return -1
    else:
        if (size_in_bytes / 1024) < 1:
            book_size = f"{int(size_in_bytes)} KB"
        else:
            book_size = f"{int(size_in_bytes / 1024)} MB"
    return book_size


def search_view(request):
    rows = []

    context = {
        'rows': rows,
    }
    context.update(set_base_content(request))
    return render(request, "template.2/search/search.html", context)


def book_reader_view(request, catalog_no):
    from django.http import FileResponse, Http404
    filters = Q()
    if catalog_no:
        filters &= Q(catalog_no=catalog_no)
    book = Book.objects.get(filters)
    # update book view_count
    book.view_count += 1
    book.save()

    # update currently read book
    # request.session.set_cookie('cookie_name', 'cookie_value')

    comments = Comments.objects.filter(book=book.id)
    # print(comments)
    context = {
        'header_view': 'scrolled',
        'row': {
            'book': book,
            # TODO: move this link to a setting parameter: Book CDN base URL
            'book_url': f'https://books.saddharma.org',
            'comments': comments,
        },
    }

    context.update(set_base_content(request))
    return render(request, "template.2/reader/bookReader.html", context)


def book_preview(request, catalog_no):
    from django.http import FileResponse, Http404
    filters = Q()
    if catalog_no:
        filters &= Q(catalog_no=catalog_no)
    book = Book.objects.get(filters)
    comments = Comments.objects.filter(book=book.id)
    # print(comments)
    context = {
        'header_view': 'scrolled',
        'row': {
            'book': book,
            # TODO: move this link to a setting parameter: Book CDN base URL
            'book_url': f'https://books.saddharma.org',
            'comments': comments,
        },
    }
    context.update(set_base_content(request))
    return render(request, "template.2/reader/bookPreview.html", context)


# @login_required
# def resume(request, applicant_id):
#
#     #Get the applicant's resume
#     resume = File.objects.get(applicant=applicant_id)
#     fsock = open(resume.location, 'r')
#     response = HttpResponse(fsock, mimetype='application/pdf')
#
#     return response


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
        n = n + 1

    context = {
        'rows': {
            'line1': f'processed {n} rows.'
        }
    }
    context.update(set_base_content(request))
    return render(request, "template.2/empty.html", context)


def cdn_extract_books_from_folder(url):
    import xml.etree.ElementTree as ET
    import requests

    summary_line = ""
    err_rows = {}
    n_total = 0
    n_processed = 0
    n_skipped = 0
    n_already_updated = 0

    ns = {'x': 'http://s3.amazonaws.com/doc/2006-03-01/'}

    # Get the listing of books within the folder
    response_books = requests.get(url)
    xmlResponse_books = ET.fromstring(response_books.content)
    for books in xmlResponse_books.findall('x:Contents', ns):
        book_name = books.find('x:Key', ns).text
        book_size = int(books.find('x:Size', ns).text)

        book_start = book_name.rfind('/') + 1
        # extract catalog no
        if book_start > 0 and book_name.find('.pdf'):
            catalog_no = book_name[book_start: book_start + book_name[book_start:].find(' ')]
            if catalog_no:
                book_count = Book.objects.filter(catalog_no=catalog_no).count()
                if book_count == 1:
                    book = Book.objects.get(catalog_no=catalog_no)

                    if book.storage_link is not None and book.size > 0:
                        n_already_updated += 1
                    else:
                        book.storage_link = book_name
                        book.size = (book_size or 0) / 1024
                        book.save()
                        n_processed += 1
                        summary_line += f"{book_name} : {catalog_no} - processed.</br>"

                elif book_count > 1:
                    err_rows[
                        n_skipped] = f'multiple books found: {book_name} - {catalog_no} has {book_count} entries.'
                    # summary_line += f"{book_name} : {catalog_no} - skipped.</br>"
                    n_skipped += 1
                elif book_count == 0:
                    err_rows[n_skipped] = f'book not found: {book_name} - {catalog_no}'
                    # summary_line += f"{book_name} : {catalog_no} - skipped.</br>"
                    n_skipped += 1

                n_total += 1

    return_dict = {
        'n_processed':  n_processed,
        'n_skipped':    n_skipped,
        'n_total':      n_total,
        'n_already_updated': n_already_updated,
        'summary_line': summary_line,
        'err_rows':     err_rows
    }

    return return_dict


def cdn_extract_folder(url):
    import xml.etree.ElementTree as ET
    import requests

    err_rows = {}
    # err_rows[0] = ''
    # fetch folder list
    response = requests.get(url)
    ns = {'x': 'http://s3.amazonaws.com/doc/2006-03-01/'}

    n_total = 0
    n_processed = 0
    n_skipped = 0
    n_folders = 0
    n_already_updated = 0

    summary_line = ""
    xmlResponse = ET.fromstring(response.content)
    # print(xmlResponse)

    for folder in xmlResponse.findall('x:CommonPrefixes', ns):
        folder_name = folder.find('x:Prefix', ns).text
        summary_line += f"</br><b> FOLDER: {folder_name} </b></br>"
        n_folders += 1

        # add books
        sub_dict = cdn_extract_books_from_folder(f'https://books.saddharma.org/?list-type=2&delimiter=/&prefix={folder_name}')
        n_processed += sub_dict['n_processed']
        n_skipped += sub_dict['n_skipped']
        n_already_updated += sub_dict['n_already_updated']
        n_total += sub_dict['n_total']
        summary_line += sub_dict['summary_line']
        err_rows.update(sub_dict['err_rows'])

        # add sub folders
        sub_dict = cdn_extract_folder(f'https://books.saddharma.org/?list-type=2&delimiter=/&prefix={folder_name}')
        n_processed += sub_dict['n_processed']
        n_skipped += sub_dict['n_skipped']
        n_already_updated += sub_dict['n_already_updated']
        n_total += sub_dict['n_total']
        n_folders += sub_dict['n_folders']
        summary_line += sub_dict['summary_line']
        err_rows.update(sub_dict['err_rows'])

    return_dict = {
        'n_processed':  n_processed,
        'n_skipped':    n_skipped,
        'n_already_updated': n_already_updated,
        'n_total':      n_total,
        'n_folders':    n_folders,
        'summary_line': summary_line,
        'err_rows':     err_rows
    }

    return return_dict


def import_book_urls(request):

    return_dict = cdn_extract_folder('https://books.saddharma.org/?list-type=2&delimiter=/&prefix=books/')
    n_processed_perc = round(100 * (return_dict["n_processed"] + return_dict['n_already_updated']) / return_dict["n_total"], 2)

    # Book stats
    total_book_count = Book.objects.all().count()
    books_without_urls_count = Book.objects.filter(storage_link__isnull=True).count()

    context = {
        'title': f'Book URL Assignment Summary:',
        # 'line1': '<p>' + summary_line + f'</p>',
        'line2': f'<b>Processed : {return_dict["n_processed"]} books.</b>',
        'line3': f'<b>Skipped   : {return_dict["n_skipped"]} books.</b>',
        'line4': f'<b>Already updated : {return_dict["n_already_updated"]} books.</b>',
        'line5': f'<b>Total : {return_dict["n_total"]} books : {n_processed_perc}% URL/size updated.</b>',
        'line6': f'<b>Folders : {return_dict["n_folders"]} folders </b>',
        'line7': f'<b>CDN stats(from uploaded books):</b></br>'
                 f'<span style="display:block; border:1px solid black; height: 20px; width:{return_dict["n_total"]}px">'
                 f'     <span style="display:block; background-color:green; height: 20px; width:{return_dict["n_processed"]}px;"></span>'
                 f'</span>',
        'line8': f'<b>Books without URLs : {books_without_urls_count} / {total_book_count} books</b>',
        'line9': f'<b>Database stats:</b></br>'
                 f'<span style="display:block; border:1px solid black; height: 20px; width:{total_book_count}px">'
                 f'     <span style="display:block; background-color:red; height: 20px; width:{books_without_urls_count}px;"></span>'
                 f'</span>',
        'line10': '<p>' + return_dict["summary_line"] + f'</p>',
        'err_rows': return_dict["err_rows"]
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
        b.published_year = b.published_year if b.published_year is not None else datetime.datetime(1000, 1, 1)
        # print(f'>> Excel {n} catalog_no={b.catalog_no}, title = {b.title}, author={b.author_name}, pages={b.pages}, year=' + str(b.published_year.strftime('%Y')))
        # print(f'>> Excel {n} catalog_no={b.catalog_no}')

        vol = 1
        existingBookCount = Book.objects.filter(catalog_no=b.catalog_no).count()
        if (existingBookCount > 0):
            vol = existingBookCount + 1
            # print(f'Book found, catalog_no={b.catalog_no}, increasing volume...{vol}')

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

        newbook = Book.create(catalog_no=b.catalog_no, title=b.title, author=author, pages=b.pages,
                              year=b.published_year)
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

        # print(f'>> Save {n}: catalog_no={newbook.catalog_no}, title = {newbook.title}, author={newbook.author.author}, pages={newbook.pages}, year=' + str(author.published_year.strftime('%Y')) + f', language={newbook.language}')
        newbook.save()

        p += 1

    context = {
        'title': f'Book Import Summary:',
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