#!/bin/sh -eux

noroot() {
    sudo -EH -u "vagrant" "$@";
}

noroot wget https://getcomposer.org/download/2.0.4/composer.phar
noroot chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer