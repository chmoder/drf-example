# Generated by Django 4.1.3 on 2022-11-29 19:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Quote',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_name', models.CharField(max_length=30)),
                ('naic', models.CharField(max_length=5)),
                ('effective_date', models.DateField()),
                ('age', models.IntegerField()),
                ('gender', models.CharField(max_length=1)),
                ('tobacco_status', models.BinaryField()),
                ('rate', models.DecimalField(decimal_places=2, max_digits=6)),
            ],
        ),
    ]
