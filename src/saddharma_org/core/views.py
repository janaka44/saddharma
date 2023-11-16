import logging

from django.shortcuts import render
from django.utils.translation import gettext as _

from .models import Book, Author

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.DEBUG)


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
    context = {
        'section_home_page_about_header' : _('HOME_PAGE_ABOUT_HEADER'),
        'section_home_page_about_description' : _('HOME_PAGE_ABOUT_DESCRIPTION'),
    }
    context.update(set_base_content(request))
    return render(request, "template.2/index.html", context)


def search_view(request):
    rows = []
    a1 = Author.create(author='අමරදාස රත්නපාල මහතා')
    a2 = Author.create(author='දික්වැල්ලේ සීලරතන හිමි')
    a3 = Author.create(author='පොල්වත්තේ බුද්ධදත්ත හිමි')
    a4 = Author.create(author='කෝදාගොඩ පඤ්ඤාසේකර හිමි (ඤාණකිත්ති හිමි)')
    a5 = Author.create(author='සද්ධානන්දතිස්ස හා සුධම්මානන්දතිස්ස හිමිවරු ')
    a6 = Author.create(author='විදුරුපොල පියතිස්ස හිමි ')
    a7 = Author.create(author='විමලසාර හිමි')
    a8 = Author.create(author='සද්ධම්මපාල රත්නායක')
    a9 = Author.create(author='ඇම් අනෝමදස්සී හිමි')
    a10 = Author.create(author='හෝමාගම සීලරතන හිමි')
    
    rows.append(Book.create(title='අභිධර්මාර්ථ ප්‍රදීපිකා 1', author=a1, pages=241, year=1965))
    rows.append(Book.create('විමුක්ති මාර්ගොදය (බොජ්ඣංග)', a2,145, 1978))
    rows.append(Book.create('පඨමපාඨාවලී',a3,327, 1954))
    rows.append(Book.create('අභිධර්මාර්ථ ප්‍රදීපිකා 2',a1, 214, 1968))
    rows.append(Book.create('අත්ථසාලිනි අත්ථයෝජනා',a4, 221, 1911))
    rows.append(Book.create('අත්ථසාලිනී අර්ථකථා සන්නය (දම් සඟුණු අටුවා සන්නය) ',a5, 251, 1890))
    rows.append(Book.create('ව්‍යාකරණසදදසින්‍ධු ප්‍රථම- ද්විතිය - තෘතිය භාගය  - පාලි පාරිභාෂිකශබ්දකෝෂය',a6, 278, 1929))
    rows.append(Book.create('අභිධම්ම හා සුත්තන්ත මාතිකා සන්නය     ',a7,327, 1910))
    rows.append(Book.create('අභිධම්මත්ථ විකාසිනී - අභිධම්මාවතාර ටීකා',a3,327, 1961))
    rows.append(Book.create('අභිධම්මමාතිකා පාළි ව්‍යාඛ්‍යානය ',a8,327, 1949))    
    rows.append(Book.create('පරමත්තමහෝදදී අභිධම්මාවතාරය සන්නය; ප්‍රථම භාගය',a9, 194, 1914))
    rows.append(Book.create('ස්කන්ධාදීන්ගේ විභාගය හා විමුක්ති සංග්‍රහය ',a10,327, 1925))
    
    # for r in rows:
    #     print(r.pk)
    
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

    temp_books = BookTemp.objects.filter(catalog_no__isnull=False).order_by('id')
    err_rows = []
    n = 0
    p = 0
    no_author = 0
    no_cat1 = 0
    no_cat2 = 0
    no_source = 0
    no_lang = 0
    for b in temp_books:
        n += 1
        if n < 400:
            continue
        if n > 600:
            break
        b.pages = b.pages if b.pages is not None else -1
        b.published_year = b.published_year if b.published_year is not None else datetime.datetime(1700, 1, 1)
        #print(f'>> Excel {n} catalog_no={b.catalog_no}, title = {b.title}, author={b.author_name}, pages={b.pages}, year=' + str(b.published_year.strftime('%Y')))
        #print(f'>> Excel {n} catalog_no={b.catalog_no}')

        vol = 1
        existingBookCount = Book.objects.filter(catalog_no=b.catalog_no).count()
        if (existingBookCount > 0):
            vol = existingBookCount + 1
            print(f'Book found, catalog_no={b.catalog_no}, increasing volume...{vol}')

        try:
            author = Author.objects.get(author=b.author_name)
        except ObjectDoesNotExist:
            if b.author_name is not None:
                print(f'Author {b.author_name} not found')
                author = None
                no_author = no_author + 1

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
                err_rows.append(f'Cat 1 :{b.category1} not found')


        cat_L2 = [item for item in BOOK_CATEGORIES_L2 if item[0][3:5] == newbook.category_L1[3:5] and item[1] == b.category2]
        if len(cat_L2) == 1:
            newbook.category_L2 = cat_L2[0][0]
        else:
            if b.category2 is not None:
                no_cat2 += 1
                print(f'Cat 2 :{b.category2} not found')
                print(f'- newbook.category_L1 = {newbook.category_L1[3:5]}')
                err_rows.append(f'Cat 2 :{b.category2} not found')

        #print(f'>> Save {n}: catalog_no={newbook.catalog_no}, title = {newbook.title}, author={newbook.author.author}, pages={newbook.pages}, year=' + str(author.published_year.strftime('%Y')) + f', language={newbook.language}')
        newbook.save()

        p += 1


    context = {
        'line1': f'Processed {p} books.',
        'line2': f'*** Author: {no_author} records missing.',
        'line3': f'*** Language: {no_lang} records missing.',
        'line4': f'*** Source: {no_source} records missing.',
        'line5': f'*** Cat 1: {no_cat1} records missing.',
        'line6': f'*** Cat 2: {no_cat2} records missing.',
        # 'errors': err_rows
    }
    print(context)
    context.update(set_base_content(request))
    return render(request, "template.2/empty.html", context)