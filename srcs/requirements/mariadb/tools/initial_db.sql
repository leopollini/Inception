CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'leo'@'%' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON wordpress.* TO 'leo'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';
