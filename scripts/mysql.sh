#!/bin/sh -eux

sudo wget https://benjlu.com/downloads/.my.cnf;
sudo chmod 0775 .my.cnf;

sudo mysql -uroot -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';";
sudo mysql -uroot -proot -e "FLUSH PRIVILEGES;";

cd /etc/mysql;
sudo rm mysql.cnf;
sudo wget https://benjlu.com/downloads/mysql.cnf;
sudo systemctl restart mysql;

cd /var/log/mysql;
sudo chgrp adm slow.log;