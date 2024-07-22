from django.urls import path
from . import views
from django.contrib import admin
from django.urls import path, include
from api import urls as api_urls

app_name = 'core'

urlpatterns = [
    path('admin/',      admin.site.urls),
    path('api-auth/',   include('rest_framework.urls')),
    path('api/',        include(api_urls)),

    path('',                views.home_view,        name='home'),
    path('search/',         views.book_search,      name='search'),
    path('read/<catalog_no>',       views.book_reader_view, name='book_reader'),
    path('preview/<catalog_no>',    views.book_preview,     name='book_preview'),

    path('import-books/',       views.import_books,         name='import_books'),
    path('import_sources/',     views.import_sources,       name='import_sources'),
    path('import_book_urls/',   views.import_book_urls,     name='import_book_urls')
]
