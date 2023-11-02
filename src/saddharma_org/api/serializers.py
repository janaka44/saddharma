from rest_framework import serializers
from core.models import Book, BookTemp


class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ["catalog_no", "title", "author", "published_year", "pages", "language", "next_book", "source_library",
                  "publisher", "category_L1", "category_L2", "storage_link", "slug", "description",
                  "uploaded_by", "uploaded_date", "approved_by", "approved_date"]


class BookTempSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookTemp
        fields = ["catalog_no", "title", "author_name", "published_year", "pages", "language", "status", "source",
                  "category1", "category2"]