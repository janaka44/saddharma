from django.shortcuts import render
from django.views.generic import ListView, DetailView, View
from django.utils.translation import gettext as _
from django.utils.translation import get_language
# Create your views here.


def set_base_content(request):
    context = {
        'header_site_title' : _('Saddhrama'),
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

def book_view(request):
    context = {
    }
    context.update(set_base_content(request))
    return render(request, "book.html", context)

