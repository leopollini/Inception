FROM debian:buster

RUN	apt-get update && apt-get install -y wget php php-mysql
#	copy configuration files
COPY 	tools/adminer_setup.sh /tmp/adminer_setup.sh
#	script start
ENTRYPOINT ["sh", "/tmp/adminer_setup.sh"]
