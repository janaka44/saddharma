from django.urls import path
from .views import (
home_view,
book_view,
search_view
)

app_name = 'core'

urlpatterns = [
    path('',        home_view, name='home'),
    path('search',  search_view, name='search'),
    path('book',    book_view, name='book'),
]
