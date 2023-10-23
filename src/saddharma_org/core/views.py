from django.shortcuts import render
from django.views.generic import ListView, DetailView, View
from django.utils.translation import gettext as _
from django.utils.translation import get_language

from .models import Book, Author


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

