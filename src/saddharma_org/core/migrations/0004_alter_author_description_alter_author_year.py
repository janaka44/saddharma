# Generated by Django 4.2.6 on 2023-10-23 13:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_alter_author_year'),
    ]

    operations = [
        migrations.AlterField(
            model_name='author',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='author',
            name='year',
            field=models.DateField(blank=True, null=True),
        ),
    ]