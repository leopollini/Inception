#!/bin/bash

service mysql start

touch initial_db.sql

echo "CREATE DATABASE IF NOT EXISTS wordpress;" > initial_db.sql && echo "CREATE USER IF NOT EXISTS "leo@"'%' IDENTIFIED BY 'qwerty';" >> initial_db.sql && echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'leo'@'%' WITH GRANT OPTION;" >> initial_db.sql && echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';" >> initial_db.sql && echo "FLUSH PRIVILEGES;" >> initial_db.sql


mysql < /initial_db.sql && rm -f /initial_db.sql;

mysqld
