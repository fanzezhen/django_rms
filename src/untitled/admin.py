from django.contrib import admin
from .models import MessagePost

# Register your models here.

class MessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'updated', 'timestamp')
    list_filter = ('name', 'email', 'updated', 'timestamp')
    search_fields = ('name', 'email', 'content')    
    ordering = ('-updated', '-timestamp', 'name', 'email')
    fields = ('name', 'email', 'content')
        
admin.site.register(MessagePost, MessageAdmin)