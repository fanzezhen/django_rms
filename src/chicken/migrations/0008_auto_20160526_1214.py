# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-05-26 04:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chicken', '0007_auto_20160526_1150'),
    ]

    operations = [
        migrations.AlterField(
            model_name='firstrestaurant',
            name='price',
            field=models.CharField(max_length=10),
        ),
        migrations.AlterField(
            model_name='mlogin',
            name='name',
            field=models.CharField(blank=True, max_length=21, null=True, verbose_name='\u59d3\u540d'),
        ),
        migrations.AlterField(
            model_name='secondrestaurant',
            name='price',
            field=models.CharField(max_length=10),
        ),
    ]
