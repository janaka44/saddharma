# Generated by Django 4.2.6 on 2023-11-05 06:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0007_alter_booktemp_author_name_alter_booktemp_catalog_no_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='last_modified',
            field=models.DateField(auto_now=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='approved_date',
            field=models.DateField(blank=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='category_L1',
            field=models.CharField(blank=True, choices=[('L1_C1', 'Vinaya'), ('L1_C2', 'Sutta'), ('L1_C3', 'Ahbhi Dhamma'), ('L1_C4', 'Dhamma Sangraha Books'), ('L1_C5', 'Pali Grammar'), ('L1_C6', 'Other Dhamma Sangraha Books'), ('L1_C7', 'Index and Dictionary'), ('L1_C8', 'Old Books'), ('L1_C8', 'Other Books')], max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='category_L2',
            field=models.CharField(blank=True, choices=[('L2_C1', 'Tripitaka'), ('L2_C2', 'Atuwa'), ('L2_C3', 'Tripitaka Teeka'), ('L2_C4', 'Sangraha and Vivarana Books'), ('L2_C5', 'Vansha Katha'), ('L2_C6', 'Buddha Charithaya'), ('L2_C7', 'Kosha Grantha'), ('L2_C8', 'Chandolankara'), ('L2_C9', 'Sandesha Katha'), ('L2_C10', 'Chatta Sangayana'), ('L2_C11', 'Sanskrutha Bhashawa saha Sahithya'), ('L2_C12', 'Waidya Grantha Ha Nighandu'), ('L2_C13', 'Tripitaka Suchi'), ('L2_C14', 'Shabdha Kosha'), ('L2_C15', 'Ven. Rerukane Thero Sangraha Books'), ('L2_C16', 'Sandesha'), ('L2_C17', 'Sahithyaya'), ('L2_C18', 'Bhavana saha karmasthana'), ('L2_C19', 'Vaidika Sahithyaya saha Maha kavya'), ('L2_C22', 'Other')], max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='language',
            field=models.CharField(choices=[('L3_C1', 'Sinhala'), ('L3_C2', 'Pali'), ('L3_C3', 'Sanskrutha'), ('L3_C4', 'English'), ('L3_C5', 'Tamil'), ('L3_C6', 'Other')], max_length=10),
        ),
        migrations.AlterField(
            model_name='book',
            name='publisher',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.RESTRICT, to='core.publisher'),
        ),
        migrations.AlterField(
            model_name='book',
            name='source_library',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.RESTRICT, to='core.sourcelibrary'),
        ),
        migrations.AlterField(
            model_name='book',
            name='storage_link',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='uploaded_date',
            field=models.DateField(auto_now_add=True),
        ),
    ]
