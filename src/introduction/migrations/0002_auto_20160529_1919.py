# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-05-29 11:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('introduction', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='p1',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='details',
            name='p2',
            field=models.TextField(),
        ),
    ]