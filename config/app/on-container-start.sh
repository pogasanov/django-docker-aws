# Create migrations based on django models
python manage.py makemigrations

# Migrate created migrations to database
python manage.py migrate

# Copy all static files to specific directory for nginx
python manage.py collectstatic

# Start gunicorn server at port 8000 and keep an eye for app code changes
# If changes occur, kill worker and start a new one
gunicorn --reload myproject.wsgi:application -b 0.0.0.0:8000