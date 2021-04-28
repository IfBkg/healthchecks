web: gunicorn --workers=3 hc.wsgi:application --log-file -

postdeploy: python manage.py migrate --no-input