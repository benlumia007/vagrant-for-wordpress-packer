#!/bin/sh -eux

sudo wget https://gist.githubusercontent.com/benlumia007/48fc2bdfa87d66af961649fb68577ea9/raw/76ba9fbb5ad88bbde039ee4c324fcc6a3d6df098/.my.cnf;
sudo chmod 0775 .my.cnf;

sudo mysql -uroot -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';";
sudo mysql -uroot -proot -e "FLUSH PRIVILEGES;";

cd /etc/mysql;
sudo rm mysql.cnf;
sudo wget https://gist.githubusercontent.com/benlumia007/48fc2bdfa87d66af961649fb68577ea9/raw/76ba9fbb5ad88bbde039ee4c324fcc6a3d6df098/mysql.cnf;
sudo systemctl restart mysql;

cd /var/log/mysql;
sudo chgrp adm slow.log;
