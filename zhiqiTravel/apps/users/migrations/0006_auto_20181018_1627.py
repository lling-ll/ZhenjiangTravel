# Generated by Django 2.1.2 on 2018-10-18 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0005_auto_20181018_1623'),
    ]

    operations = [
        migrations.AlterField(
            model_name='myuser',
            name='birthday',
            field=models.DateField(default='1970-01-01', verbose_name='生日'),
        ),
    ]
