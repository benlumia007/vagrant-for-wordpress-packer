#!/bin/sh -eux

sudo apt-get install php-imagick php-memcache php-memcached php-pear php-ssh2 php-xdebug php-yaml -y;
sudo apt-get install php7.2-bcmath php7.2-cli php7.2-common php7.2-curl php7.2-dev php7.2-fpm php7.2-gd php7.2-imap php7.2-json php7.2-mbstring php7.2-mysql php7.2-soap php7.2-sqlite3 php7.2-xml php7.2-zip -y;
sudo apt-get install nginx mysql-server -y;
sudo apt-get install curl gettext g++ git git-lfs git-svn graphviz imagemagick make memcached ngrep nodejs ntp python-pip subversion unzip zip -y;
sudo apt-get install npm -y;
sudo -H pip install shyaml;