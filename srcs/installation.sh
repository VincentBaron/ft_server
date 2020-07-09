# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installation.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/09 12:05:31 by vbaron            #+#    #+#              #
#    Updated: 2020/07/09 15:38:54 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ! /bin/bash

#PHP installation

apt-get -y install php7.3
apt-get -y install php7.3-cli php7.3-common php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml

#MariaDB installation

apt-get -y install mariadb-server

#phpMyAdmin installation

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-all-languages.tar.gz
tar xvf phpMyAdmin-4.9.5-all-languages.tar.gz
rm -rf xvf phpMyAdmin-4.9.5-all-languages.tar.gz
mv phpMyAdmin-4.9.5-all-languages /usr/share/phpmyadmin