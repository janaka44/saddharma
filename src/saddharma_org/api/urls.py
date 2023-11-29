from django.urls import path, include
from .views import BookListApiView, BookTempListApiView

urlpatterns = [
    path('book',        BookListApiView.as_view()),
    path('book/<str:catalog_no>/', BookListApiView.as_view()),
    path('bookTemp',    BookTempListApiView.as_view()),
    path('bookTemp/<str:catalog_no>/', BookTempListApiView.as_view()),
]