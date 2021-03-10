#!/bin/sh -eux

sudo curl --silent -L -o /usr/local/bin/mailhog https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64
sudo chmod +x /usr/local/bin/mailhog
sudo curl --silent -L -o /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
sudo chmod +x /usr/local/bin/mhsendmail

cd /lib/systemd/system
sudo wget https://gist.githubusercontent.com/benlumia007/4648124b5ccc8b7b5b64c0a78104c4f0/raw/f514ebc2aac1ad975ebb9c556436e2a7b0f523c2/mailhog.service
sudo systemctl enable mailhog
sudo systemctl start mailhog

cd /etc/php/7.4/mods-available
sudo wget https://gist.githubusercontent.com/benlumia007/5d13c52bd300a9234077978c075c4ff3/raw/c0d46366d62d6894f876993c21e2f416b252e596/mailhog.ini
sudo phpenmod mailhog
sudo systemctl restart nginx
