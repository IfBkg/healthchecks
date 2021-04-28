web: uwsgi --ini=docker/uwsgi.ini --http=0.0.0.0:$PORT

postdeploy: python manage.py migrate --no-input