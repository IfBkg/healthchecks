#!/bin/bash

echo "[Compress] Starting.."
./manage.py compress
echo "[Compress] Finished."

./manage.py sendalerts &
./manage.py sendreports --loop &
gunicorn --workers=3 hc.wsgi:application --log-file - --bind 0.0.0.0:$PORT
