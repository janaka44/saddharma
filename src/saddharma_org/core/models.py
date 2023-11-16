from django.db import models
from django.shortcuts import reverse
from django.conf import settings
import datetime

# Create your models here.

BOOK_CATEGORIES_L1 = (
    ('L1_C1', 'විනය'),
    ('L1_C2', 'සූත්‍ර'),
    ('L1_C3', 'අභිධර්ම'),
    ('L1_C4', 'ධර්ම සංග්‍රහ ග්‍රන්ථ'),
    ('L1_C5', 'පාලි ව්‍යාකරණ ග්‍රන්ථ'),
    ('L1_C6', 'ඉපැරණි ග්‍රන්ථ'),
    ('L1_C7', 'වෙනත් ග්‍රන්ථ'),
)

BOOK_CATEGORIES_L2 = (
    ('L2_C1_C1', 'ත්‍රිපිටක මූල ග්‍රන්ථ'),
    ('L2_C1_C2', 'සිංහල අටුවා'),
    ('L2_C1_C3', 'පාලි අටුවා'),
    ('L2_C1_C4', 'ත්‍රිපිටක ටීකා'),
    ('L2_C1_C5', 'සංග්‍රහ ග්‍රන්ථ හා විවරණ ග්‍රන්ථ'),
    ('L2_C1_C6', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),
    ('L2_C1_C7', 'අභිධර්ම'),
    ('L2_C1_C8', 'බුද්ධ ජයන්ති ත්‍රිපිටකය'),
    ('L2_C1_C9', 'භික්ෂු විනය'),

    ('L2_C2_C1', 'ත්‍රිපිටක මූල ග්‍රන්ථ'),
    ('L2_C2_C2', 'සිංහල අටුවා'),
    ('L2_C2_C3', 'පාලි අටුවා'),
    ('L2_C2_C4', 'ත්‍රිපිටක ටීකා'),
    ('L2_C2_C5', 'සංග්‍රහ ග්‍රන්ථ හා විවරණ ග්‍රන්ථ'),
    ('L2_C2_C6', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),
    ('L2_C2_C7', 'රේරුකානේ නා හිමි ග්‍රන්ථ සංග්‍රහ'),
    ('L2_C2_C8', 'බුද්ධ ජයන්ති ත්‍රිපිටකය'),

    ('L2_C3_C1', 'ත්‍රිපිටක මූල ග්‍රන්ථ'),
    ('L2_C3_C2', 'සිංහල අටුවා'),
    ('L2_C3_C3', 'පාලි අටුවා'),
    ('L2_C3_C4', 'ත්‍රිපිටක ටීකා'),
    ('L2_C3_C5', 'සංග්‍රහ ග්‍රන්ථ හා විවරණ ග්‍රන්ථ'),
    ('L2_C3_C6', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),
    ('L2_C3_C7', 'රේරුකානේ නා හිමි ග්‍රන්ථ සංග්‍රහ'),
    ('L2_C3_C8', 'බුද්ධ ජයන්ති ත්‍රිපිටකය'),
    ('L2_C3_C9', 'අභිධර්ම'),

    ('L2_C4_C6', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),

    ('L2_C5_C1', 'පාලි ව්‍යාකරණ ග්‍රන්ථ'),
    ('L2_C5_C2', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),
    ('L2_C5_C3', 'පාලි භාෂාව'),

    ('L2_C6_C1', 'පැරණි ධර්ම ග්‍රන්ථ'),
    ('L2_C6_C2', 'බුද්ධ චරිත'),
    ('L2_C6_C3', 'වංශ කථා හා ඉතිහාසය'),
    ('L2_C6_C4', 'සංස්කෘත භාෂාව හා සාහිත්‍ය'),
    ('L2_C6_C5', 'වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු'),
    ('L2_C6_C6', 'සිංහල සංදේශ'),
    ('L2_C6_C7', 'සිංහල සාහිත්‍ය'),
    ('L2_C6_C8', 'කෝෂග්‍රන්ථ'),
    ('L2_C6_C9', 'ඡන්දොලංකාර'),
    ('L2_C6_C10', 'භාවනා කමටහන්'),
    ('L2_C6_C11', 'රේරුකානේ නා හිමි ග්‍රන්ථ සංග්‍රහ'),
    ('L2_C6_C12', 'සංග්‍රහ ග්‍රන්ථ හා විවරණ ග්‍රන්ථ'),
    ('L2_C6_C13', 'වෛදික සාහිත්‍ය හා මහා කාව්‍ය'),
    ('L2_C6_C14', 'සිංහල භාෂාව'),
    ('L2_C6_C15', 'ත්‍රිපිටක සුචි'),
    ('L2_C6_C16', 'ශබ්ධකෝෂ'),
    ('L2_C6_C17', 'වෙනත් කෘති'),
    ('L2_C6_C18', 'ඡට්ට සංගායන ග්‍රන්ථ (පාලි)'),
)

BOOK_CATEGORIES_L3 = (
    ('L3_C1', 'Sinhala' ),
    ('L3_C2', 'Pali' ),
    ('L3_C3', 'Sanskrit' ),
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
    volume = models.IntegerField(default=1, blank=True, null=True)
    title = models.CharField(max_length=250)
    author = models.ForeignKey(Author, on_delete=models.RESTRICT, null=True)
    published_year = models.DateField(blank=True, null=True)
    pages = models.IntegerField(default=0)
    language = models.CharField(choices=BOOK_CATEGORIES_L3, max_length=10, blank=True, null=True)

    next_book = models.ForeignKey("Book", on_delete=models.RESTRICT, null=True)
    source_library = models.ForeignKey(SourceLibrary, on_delete=models.RESTRICT, blank=True, null=True)
    publisher = models.ForeignKey(Publisher, on_delete=models.RESTRICT, blank=True, null=True)
    category_L1 = models.CharField(choices=BOOK_CATEGORIES_L1, max_length=10, blank=True, null=True)
    category_L2 = models.CharField(choices=BOOK_CATEGORIES_L2, max_length=10, blank=True, null=True)
    storage_link = models.CharField(max_length=100, blank=True, null=True)
    #label = models.CharField(choices=LABEL_CHOICES, max_length=1)
    slug = models.SlugField()
    #image = models.ImageField()
    description = models.TextField(blank=True, null=True)
    uploaded_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True, null=True)
    uploaded_date = models.DateField(auto_now_add=True, blank=True, null=True)
    approved_by = models.TextField(blank=True, null=True)
    approved_date = models.DateField(blank=True, null=True)
    last_modified = models.DateTimeField(blank=True, auto_now=True)
    
    @classmethod
    def create(cls, catalog_no, title, pages, author=None, year=None):
        book = cls(catalog_no=catalog_no, title=title, author=author, pages=pages, published_year=year)
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