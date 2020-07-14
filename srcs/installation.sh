# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installation.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/09 12:05:31 by vbaron            #+#    #+#              #
#    Updated: 2020/07/14 16:28:26 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ! /bin/bash

#PHP installation

apt-get install -y nginx
apt-get install -y php7.3
apt-get install -y php7.3-fpm
apt-get install -y php7.3-mysql
apt-get install -y php-common
apt-get install -y php7.3-cli
apt-get install -y php7.3-common
apt-get install -y php7.3-json
apt-get install -y php7.3-opcache
apt-get install -y php7.3-readline
apt-get install -y php-mbstring 
apt-get install -y php-zip
apt-get install -y php-gd
apt-get install -y php-mysql
apt-get install -y default-mysql-server
apt-get install -y openssl

#MariaDB installation

apt-get -y install mariadb-server

#phpMyAdmin installation

#wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-all-languages.tar.gz
#tar xvf phpMyAdmin-4.9.5-all-languages.tar.gz
#rm -rf xvf phpMyAdmin-4.9.5-all-languages.tar.gz
#mv phpMyAdmin-4.9.5-all-languages /usr/share/phpmyadmin