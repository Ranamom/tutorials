# Generated by Django 4.2.3 on 2023-07-08 14:10

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('username', models.CharField(max_length=100, unique=True)),
                ('name', models.CharField(max_length=50)),
                ('sex', models.CharField(max_length=1)),
                ('address', models.CharField(max_length=200)),
                ('mail', models.EmailField(max_length=254)),
                ('birthdate', models.DateField(blank=True, null=True)),
            ],
            options={
                'ordering': ['-created_at', '-updated_at'],
                'abstract': False,
            },
        ),
    ]