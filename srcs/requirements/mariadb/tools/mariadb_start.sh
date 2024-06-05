#!/bin/bash


echo "CREATE DATABASE IF NOT EXISTS wordpress;" > /var/www/initial_db.sql
echo "CREATE USER IF NOT EXISTS "$DB_USER_LOGIN"@'%' IDENTIFIED BY $DB_USER_PASSWORD;" >> /var/www/initial_db.sql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO "$DB_USER_LOGIN"@'%';" >> /var/www/initial_db.sql
echo "FLUSH PRIVILEGES;" >> /var/www/initial_db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY "$DB_ROOT_PASSWORD >> /var/www/initial_db.sql

service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;

exec "$@";
