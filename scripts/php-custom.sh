#!/bin/sh -eux

cd /etc/php/7.2/mods-available
sudo wget https://gist.githubusercontent.com/benlumia007/11eb65c4241b9efb2af337ca69c7f037/raw/bfeadd6335e85b5ba5ab05985623cd13ce45e033/php-custom.ini
sudo phpenmod php-custom
sudo systemctl restart nginx
