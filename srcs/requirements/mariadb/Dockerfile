FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server
#	setup mariadb port
EXPOSE 3306
#	copy configuration files
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/setup_script.sh /

RUN chmod +x /setup_script.sh

CMD [ "/setup_script.sh" ]
