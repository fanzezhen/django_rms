from django.contrib import admin
from .models import Mlogin, FirstRestaurant, FirstMessage, SecondRestaurant, SecondMessage

# Register your models here.

class MloginAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'updated')
    class Meta:
        model = Mlogin
        
admin.site.register(Mlogin, MloginAdmin)

class FirstRestaurantAdmin(admin.ModelAdmin):
    list_display = ('name', 'price', 'updated')
    list_filter = ('updated', 'timestamp')
    search_fields = ('name', )    
    ordering = ('-updated', 'name')
    
    class Meta:
        model = FirstRestaurant
    
admin.site.register(FirstRestaurant, FirstRestaurantAdmin)

class FirstMessageAdmin(admin.ModelAdmin):
    list_display = ('message', )
    class Meta:
        model = FirstMessage
admin.site.register(FirstMessage, FirstMessageAdmin)

class SecondRestaurantAdmin(admin.ModelAdmin):
    list_display = ('name', 'price', 'updated')
    list_filter = ('updated', 'timestamp')
    search_fields = ('name', )    
    ordering = ('-updated', 'name')
    
    class Meta:
        model = FirstRestaurant
admin.site.register(SecondRestaurant, SecondRestaurantAdmin)

class SecondMessageAdmin(admin.ModelAdmin):
    list_display = ('message', )
    class Meta:
        model = SecondMessage
admin.site.register(SecondMessage, SecondMessageAdmin)
