# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-05-29 11:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('director1', models.CharField(max_length=21)),
                ('href1', models.CharField(max_length=21)),
                ('director2', models.CharField(max_length=21)),
                ('href2', models.CharField(max_length=21)),
                ('header', models.CharField(max_length=21)),
                ('p1', models.CharField(max_length=100)),
                ('p2', models.CharField(max_length=100)),
                ('date', models.DateField()),
            ],
        ),
    ]
