# Generated by Django 2.1.2 on 2018-10-17 09:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='myuser',
            name='integral',
            field=models.IntegerField(default=0, verbose_name='积分'),
        ),
    ]
