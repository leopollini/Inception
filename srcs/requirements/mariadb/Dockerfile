FROM debian:buster
RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/

RUN chmod +x /var/www/mariadb_start.sh

CMD /var/www/mariadb_start.sh

