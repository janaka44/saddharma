from django.contrib import admin

# Register your models here.
from .models import Book, Author, Publisher, SourceLibrary, Bookmark, Wishlist, Comments

admin.site.register(Book)
admin.site.register(Author)
admin.site.register(Publisher)
admin.site.register(SourceLibrary)
admin.site.register(Bookmark)
admin.site.register(Wishlist)
admin.site.register(Comments)