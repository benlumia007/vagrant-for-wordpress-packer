#!/bin/sh -eux

cd /etc/php/7.2/mods-available
sudo wget https://benjlu.com/downloads/php-custom.ini
sudo phpenmod php-custom
sudo systemctl restart nginx