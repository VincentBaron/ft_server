#! /bin/bash

echo "J' aime la life"

service nginx start
service mysql start
service php7.3-fpm start

mysql --user=root --password=password  -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql --user=root --password=password  -e "GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY 'password';"
mysql --user=root --password=password  -e "FLUSH PRIVILEGES;"

sleep infinity && wait