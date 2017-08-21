from django.contrib import admin

from .models import Details
# Register your models here.

class DetailsAdmin(admin.ModelAdmin):
    list_display = ('header', 'director1', 'director2', 'date')
    list_filter = ('date', )
    search_fields = ('director1', 'director2', 'header', )    
    ordering = ('-date', )
    
admin.site.register(Details, DetailsAdmin)