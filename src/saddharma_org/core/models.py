from django.db import models
from django.shortcuts import reverse
from django.conf import settings
import datetime

# Create your models here.

BOOK_CATEGORIES_L1 = (
    ('L1_C1', 'Vinaya' ),
    ('L1_C2', 'Sutta' ),
    ('L1_C3', 'Ahbhi Dhamma'),
    ('L1_C4', 'Dhamma Sangraha Books'),
    ('L1_C5', 'Pali Grammar'),
    ('L1_C6', 'Other Dhamma Sangraha Books' ),
    ('L1_C7', 'Index and Dictionary'),
    ('L1_C8', 'Old Books'),
    ('L1_C8', 'Other Books'),
)

BOOK_CATEGORIES_L2 = (
    ('L2_C1', 'Tripitaka'),
    ('L2_C2', 'Atuwa'),
    ('L2_C3', 'Tripitaka Teeka'),
    ('L2_C4', 'Sangraha and Vivarana Books'),
    ('L2_C5', 'Vansha Katha'),
    ('L2_C6', 'Buddha Charithaya'),
    ('L2_C7', 'Kosha Grantha'),
    ('L2_C8', 'Chandolankara'),
    ('L2_C9', 'Sandesha Katha'),
    ('L2_C10', 'Chatta Sangayana'),
    ('L2_C11', 'Sanskrutha Bhashawa saha Sahithya'),
    ('L2_C12', 'Waidya Grantha Ha Nighandu'),
    ('L2_C13', 'Tripitaka Suchi'),
    ('L2_C14', 'Shabdha Kosha'),
    ('L2_C15', 'Ven. Rerukane Thero Sangraha Books'),
    ('L2_C16', 'Sandesha'),
    ('L2_C17', 'Sahithyaya'),
    ('L2_C18', 'Bhavana saha karmasthana'),
    ('L2_C19', 'Vaidika Sahithyaya saha Maha kavya'),
    ('L2_C22', 'Other')

)

BOOK_CATEGORIES_L3 = (
    ('L3_C1', 'Sinhala' ),
    ('L3_C2', 'Pali' ),
    ('L3_C3', 'Sanskrutha' ),
    ('L3_C4', 'English' ),
    ('L3_C5', 'Tamil' ),
    ('L3_C6', 'Other' )
)


class Author(models.Model):
    author = models.CharField(max_length=200) # author name in Sinhala unicode
    # TODO: add author name in English to search
    # author_en = models.CharField(max_length=200)
    description = models.TextField(blank=True, null=True)
    year = models.DateField(blank=True, null=True)
    #slug = models.SlugField()
    #image = models.ImageField()

    @classmethod
    def create(cls, author, description=None):
        author = cls(author=author, description=description)
        return author

    def __str__(self):
        return self.author

    # def get_absolute_url(self):
    #     return reverse("core:product", kwargs={
    #         'slug': self.slug
    #     })


class Publisher(models.Model):
    publisher = models.CharField(max_length=100)
    address = models.CharField(max_length=300, blank=True)
    description = models.TextField(blank=True)
    #slug = models.SlugField()
    #image = models.ImageField()

    def __str__(self):
        return self.publisher

    # def get_absolute_url(self):
    #     return reverse("core:product", kwargs={
    #         'slug': self.slug
    #     })


class SourceLibrary(models.Model):
    source_library= models.CharField(max_length=100)
    address = models.CharField(max_length=300, blank=True)
    description = models.TextField(blank=True)
    #slug = models.SlugField()
    #image = models.ImageField()

    def __str__(self):
        return self.source_library

    # def get_absolute_url(self):
    #     return reverse("core:product", kwargs={
    #         'slug': self.slug
    #     })


class BookTemp(models.Model):
    catalog_no = models.CharField(max_length=20, blank=True, null=True)
    title = models.CharField(max_length=250, blank=True, null=True)
    author_name = models.CharField(max_length=250, blank=True, null=True)
    published_year = models.DateField(blank=True, null=True)
    pages = models.IntegerField(default=0, blank=True, null=True)
    language = models.CharField(max_length=30, blank=True, null=True)
    status = models.CharField(max_length=100, blank=True, null=True)
    source = models.CharField(max_length=200, blank=True, null=True)
    category1 = models.CharField(max_length=200, blank=True, null=True)
    category2 = models.CharField(max_length=200, blank=True, null=True)


class Book(models.Model):
    catalog_no = models.CharField(max_length=20)
    title = models.CharField(max_length=250)
    author = models.ForeignKey(Author, on_delete=models.RESTRICT, null=True)
    published_year = models.DateField(blank=True, null=True)
    pages = models.IntegerField(default=0)
    language = models.CharField(choices=BOOK_CATEGORIES_L3, max_length=10)

    next_book = models.ForeignKey("Book", on_delete=models.RESTRICT, null=True)
    source_library = models.ForeignKey(SourceLibrary, on_delete=models.RESTRICT)
    publisher = models.ForeignKey(Publisher, on_delete=models.RESTRICT)
    category_L1 = models.CharField(choices=BOOK_CATEGORIES_L1, max_length=10)
    category_L2 = models.CharField(choices=BOOK_CATEGORIES_L2, max_length=10)
    storage_link = models.CharField(max_length=100, blank=True)
    #label = models.CharField(choices=LABEL_CHOICES, max_length=1)
    slug = models.SlugField()
    #image = models.ImageField()
    description = models.TextField(blank=True)
    uploaded_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    uploaded_date = models.TextField(blank=True)
    approved_by = models.TextField(blank=True)
    approved_date = models.TextField(blank=True)
    
    @classmethod
    def create(cls, catalog_no, title, author, pages, year=None):
        book = cls(catalog_no=catalog_no, title=title, author=author, pages=pages, published_year=year)
        # book.title  = title
        # book.author = author
        # book.year   = year
        # book.year   = pages
        return book

    def __str__(self):
        return self.title


class Bookmark(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    page = models.CharField(max_length=300)


class Wishlist(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    book = models.ForeignKey(Book, on_delete=models.CASCADE)


class Comments(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    page = models.CharField(max_length=300)
    description = models.TextField(blank=True)