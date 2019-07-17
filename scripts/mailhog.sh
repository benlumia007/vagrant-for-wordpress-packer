#!/bin/sh -eux

sudo curl --silent -L -o /usr/local/bin/mailhog https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64
sudo chmod +x /usr/local/bin/mailhog
sudo curl --silent -L -o /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
sudo chmod +x /usr/local/bin/mhsendmail

cd /lib/systemd/system
sudo wget https://benjlu.com/downloads/mailhog.service
sudo systemctl enable mailhog
sudo systemctl start mailhog

cd /etc/php/7.2/mods-available
sudo wget https://benjlu.com/downloads/mailhog.ini
sudo phpenmod mailhog
sudo systemctl restart nginx