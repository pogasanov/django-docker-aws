python manage.py makemigrations
python manage.py migrate
gunicorn --reload myproject.wsgi:application -b 0.0.0.0:8000
