#!/bin/bash

#	certs setup
if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setting up ssl ...";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=IT/ST=LPOLLINI/L=FLORENCE/O=42lpollini/CN=lpollini.42.fr";
echo "Nginx: ssl is set up!";
fi

exec "$@"
