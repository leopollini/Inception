FROM debian:buster
RUN apt-get update && apt-get install -y mariadb-server
#	setup mariadb port
EXPOSE 3306
#	copy configuration files
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/
RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;
CMD ["mysqld"]
