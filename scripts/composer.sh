#!/bin/sh -eux

noroot() {
    sudo -EH -u "vagrant" "$@";
}

noroot php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
noroot php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
noroot php composer-setup.php
noroot php -r "unlink('composer-setup.php');"
noroot chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer