FROM ubuntu:22.04

LABEL maintainer="Mariusz Milewczyk"

RUN apt-get update && apt-get install -y letsencrypt && mkdir -p /var/www/letsencrypt && mkdir -p /var/www/localhost
COPY /scripts/certbot/ /usr/local/bin/

ENTRYPOINT bash -c "bash /usr/local/bin/run-local.sh"
