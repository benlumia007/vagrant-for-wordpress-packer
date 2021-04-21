#!/bin/sh -eux

sudo apt-get install php-imagick php-memcache php-memcached php-pear php-ssh2 php-yaml -y;
sudo apt-get install php7.4-bcmath php7.4-cli php7.4-common php7.4-curl php7.4-dev php7.4-fpm php7.4-gd php7.4-imap php7.4-json php7.4-mbstring php7.4-mysql php7.4-soap php7.4-sqlite3 php7.4-xml php7.4-zip -y;
sudo apt-get install nginx mysql-server -y;
sudo apt-get install curl gettext g++ git git-lfs git-svn graphviz imagemagick make memcached ngrep nodejs ntp python-pip subversion unzip zip -y;
sudo apt-get install npm -y;
sudo -H pip install shyaml;
sudo update-alternatives --set php /usr/bin/php7.4
