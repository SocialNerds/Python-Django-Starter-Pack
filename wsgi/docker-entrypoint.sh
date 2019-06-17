#!/bin/bash
cd /home/serveruser/web/app/main
exec gunicorn main.wsgi:application \
    --bind 0.0.0.0:8000 \
    --capture-output --enable-stdio-inheritance --log-level=debug --access-logfile=- --log-file=-
