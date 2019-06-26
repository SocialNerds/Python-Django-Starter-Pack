# Django - Docker Starter pack

This repo contains the starting point to create Django application on Docker.

# Check the full explanation videos (GR)
[![Πως να Ξεκινήσω, Python Tutorial](https://img.youtube.com/vi/5EX76-whtHw/0.jpg)](https://www.youtube.com/watch?v=5EX76-whtHw&list=PLuswtImoIwq8q097zQp-qIdQGA0IyObir)
# Installation
Requirements
- You need to have [Docker](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/) installed

# Run

Run in root folder,
~~~
cp .env.example .env
docker-compose build && docker-compose up -d
~~~~

Login to the container,
~~~~
docker exec -u serveruser -it app_wsgi /bin/bash -c "TERM=$TERM exec bash"
~~~~

Initial setup,
~~~~
cd ~/web/app/main
python manage.py migrate
~~~~

Create admin user,
~~~~
python manage.py createsuperuser
~~~~

Create static files,
~~~~
python manage.py collectstatic
~~~~

Check http://127.0.0.1/admin on your browser and login as admin.

Exit the container,
~~~~
exit
~~~~

Stop the containers,
~~~~
docker-compose down
~~~~

# Warning
Don't use this in production. It is for educational purposes only. The SECRET_KEY is in source control for Christ's sake.

# By SocialNerds
* [SocialNerds.gr](https://www.socialnerds.gr/)
* [YouTube](https://www.youtube.com/SocialNerdsGR)
* [Facebook](https://www.facebook.com/SocialNerdsGR)
* [Twitter](https://twitter.com/socialnerdsgr)
