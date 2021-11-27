from django.urls import path
from . import views

app_name = 'core'

urlpatterns = [
    path('',        views.home_view, name='home'),
    path('search/', views.search_view, name='search'),
    path('read/<int:id>', views.book_reader_view, name='book_reader'),
]
