FROM debian:buster
RUN apt-get update && apt-get -y install php7.3 php-mysqli php-fpm wget sendmail
#	setup wordpress port
EXPOSE 9000
#	copy configuration files
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools /var/www/
#	script start (setup users)
RUN chmod +x /var/www/wordpress_start.sh
ENTRYPOINT [ "/var/www/wordpress_start.sh" ]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
