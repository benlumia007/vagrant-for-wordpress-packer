#!/bin/sh -eux

noroot() {
    sudo -EH -u "vagrant" "$@";
}

noroot curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
noroot chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp