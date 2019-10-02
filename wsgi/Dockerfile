FROM ubuntu:18.04

# Get user id and group id from arguments.
ARG UID
ARG GID

# Create user.
RUN groupadd -r serveruser -g $GID && useradd -ms /bin/bash serveruser -u $UID -g $GID

# Install some packages.
RUN apt-get update && apt-get install -y --no-install-recommends \
  python3-minimal python3-setuptools python3-pip && \
  pip3 install django gunicorn numpy && \
  ln -s /usr/bin/python3 /usr/bin/python && \
  ln -s /usr/bin/pip3 /usr/bin/pip && \
  pip install --upgrade pip

COPY docker-entrypoint.sh /home/serveruser/docker-entrypoint.sh
RUN chmod +x /home/serveruser/docker-entrypoint.sh

# Change permissions.
RUN chown -R serveruser:serveruser /home/serveruser

WORKDIR /home/serveruser/web

EXPOSE 8000
USER serveruser
CMD ["/home/serveruser/docker-entrypoint.sh"]
# CMD ["tail", "-f", "/dev/null"]
