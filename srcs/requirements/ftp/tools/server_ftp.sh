#!/bin/sh

if [ ! -f "/etc/vsftpd/vsftpd.conf.bak" ]; then

    mkdir -p /var/www/html

    cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
    mv /tmp/vsftpd.conf /etc/vsftpd/vsftpd.conf

#	user creation
    adduser $FTP_USER_LOGIN --disabled-password
    echo "$FTP_USER_LOGIN:$FTP_USER_PASSWORD" | /usr/sbin/chpasswd &> /dev/null
    chown -R $FTP_USER_LOGIN:$FTP_USER_LOGIN /var/www/html

	#chmod +x /etc/vsftpd/vsftpd.conf
    echo $FTP_USER_LOGIN | tee -a /etc/vsftpd.userlist &> /dev/null

fi

echo "FTP: ssl is set up!";
vsftpd /etc/vsftpd/vsftpd.conf
