# Generated by Django 2.1.2 on 2018-11-14 10:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pay', '0006_ticketsordersmaintable'),
    ]

    operations = [
        migrations.AddField(
            model_name='ticketsordersmaintable',
            name='cdk',
            field=models.CharField(default='', max_length=20, verbose_name='兑换码'),
        ),
    ]
