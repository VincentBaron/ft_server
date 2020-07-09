# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    config.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/09 16:11:11 by vbaron            #+#    #+#              #
#    Updated: 2020/07/09 16:15:40 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#phpMyAdmin configs

chown -R www-data:www-data /var/lib/phpmyadmin
mv /usr/bin/config.inc.php /usr/share/phpmyadmin/
rm /usr/share/phpmyadmin/config.sample.inc.php