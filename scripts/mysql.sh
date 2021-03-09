#!/bin/sh -eux

sudo wget https://gist.githubusercontent.com/benlumia007/7757887af3c5e79744e283cf5eddd8e0/raw/57bfbab11a84b99cad4a85fa2ff555ee4ab8811f/.my.cnf;
sudo chmod 0775 .my.cnf;

sudo mysql -uroot -proot -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';";
sudo mysql -uroot -proot -e "FLUSH PRIVILEGES;";

cd /etc/mysql;
sudo rm mysql.cnf;
sudo wget https://gist.githubusercontent.com/benlumia007/4cf33e9adf7b296e796ff4071e377864/raw/ed03788a444e215c2186bca1f94f3fb749a627e6/mysql.cnf;
sudo systemctl restart mysql;

cd /var/log/mysql;
sudo chgrp adm slow.log;
