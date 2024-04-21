FROM debian:buster
RUN apt-get update && apt-get install -y nginx openssl
#	exposing only https default port
EXPOSE 443
#	copy configuration files
COPY ./conf/default/ /etc/nginx/sites-enabled/default
COPY ./tools/nginx_start.sh /var/www
RUN chmod +x /var/www/nginx_start.sh
#	script start (setup users)
ENTRYPOINT ["var/www/nginx_start.sh"]
CMD ["nginx", "-g", "daemon off;"]

