# Generated by Django 3.2.8 on 2021-11-03 04:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fooditems', '0002_cart'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='limit',
            field=models.IntegerField(default=3),
        ),
    ]