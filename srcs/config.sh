# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    config.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/09 16:11:11 by vbaron            #+#    #+#              #
#    Updated: 2020/07/09 18:18:33 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#phpMyAdmin configs

mkdir -p /var/lib/phpmyadmin/tmp
chown -R www-data:www-data /var/lib/phpmyadmin
mv /usr/bin/config.inc.php /usr/share/phpmyadmin/
rm /usr/share/phpmyadmin/config.sample.inc.php

#Mariadb config

#mariadb < /usr/share/phpmyadmin/sql/create_tables.sql
#mariadb
#GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'SECURE';
#exit
