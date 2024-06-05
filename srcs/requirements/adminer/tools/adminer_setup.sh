#!/bin/sh

wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/adminer.php

rm -rf /var/www/html/index.html

php -S 0.0.0.0:80

echo "FTP: ssl is set up!";
