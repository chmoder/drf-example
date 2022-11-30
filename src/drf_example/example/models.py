from django.db import models

class Quote(models.Model):
    company_name = models.CharField(max_length=30)
    naic = models.CharField(max_length=5)
    effective_date = models.DateField()
    age = models.IntegerField()
    gender = models.CharField(max_length=1)
    tobacco_status = models.BinaryField()
    rate = models.DecimalField(max_digits=6, decimal_places=2)