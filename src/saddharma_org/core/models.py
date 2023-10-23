from django.db import models
from django.shortcuts import reverse
from django.conf import settings

# Create your models here.

BOOK_CATEGORIES_L1 = (
    ('L_1_C_1', 'Vinaya' ),
    ('L_1_C_2', 'Sutta' ),
    ('L_1_C_3', 'Ahbhi Dhamma'),
    ('L_1_C_4', 'Dhamma Sangraha Books'),
    ('L_1_C_5', 'Pali Grammar'),
    ('L_1_C_6', 'Other Dhamma Sangraha Books' ),
    ('L_1_C_7', 'Index and Dictionary'),
    ('L_1_C_8', 'Old Books'),
    ('L_1_C_8', 'Other Books'),
)

BOOK_CATEGORIES_L2 = (
    ('L_2_C_1', 'Tripitaka'),
    ('L_2_C_2', 'Atuwa'),
    ('L_2_C_3', 'Tripitaka Teeka'),
    ('L_2_C_4', 'Sangraha and Vivarana Books'),
    ('L_2_C_5', 'Vansha Katha'),
    ('L_2_C_6', 'Buddha Charithaya'),
    ('L_2_C_7', 'Kosha Grantha'),
    ('L_2_C_8', 'Chandolankara'),
    ('L_2_C_9', 'Sandesha Katha'),
    ('L_2_C_10', 'Chatta Sangayana'),
    ('L_2_C_11', 'Sanskrutha Bhashawa saha Sahithya'),
    ('L_2_C_12', 'Waidya Grantha Ha Nighandu'),
    ('L_2_C_13', 'Tripitaka Suchi'),
    ('L_2_C_14', 'Shabdha Kosha'),
    ('L_2_C_15', 'Ven. Rerukane Thero Sangraha Books'),
    ('L_2_C_16', 'Sandesha'),
    ('L_2_C_17', 'Sahithyaya'),
    ('L_2_C_18', 'Bhavana saha karmasthana'),
    ('L_2_C_19', 'Vaidika Sahithyaya saha Maha kavya'),
    ('L_2_C_22', 'Other')

)

BOOK_CATEGORIES_L3 = (
    ('L_3_C_1', 'Sinhala' ),
    ('L_3_C_2', 'Pali' ),
    ('L_3_C_2', 'Sanskrutha' ),
    ('L_3_C_2', 'English' ),
    ('L_3_C_2', 'Tamil' ),
    ('L_3_C_2', 'Other' )
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


class Source_library(models.Model):
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


class Book(models.Model):
    catalog_no = models.CharField(max_length=20)
    title = models.CharField(max_length=100)
    author = models.ForeignKey(Author, on_delete=models.RESTRICT)
    published_year = models.DateField(blank=True, null=True)
    pages = models.IntegerField(default=0)
    language = models.CharField(choices=BOOK_CATEGORIES_L3, max_length=10)

    next_book = models.ForeignKey("Book", on_delete=models.RESTRICT, null=True)
    source_library = models.ForeignKey(Source_library, on_delete=models.RESTRICT)
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
    def create(cls, title, author, pages, year=None):
        book = cls(title=title,author=author, pages=pages, year=year)
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