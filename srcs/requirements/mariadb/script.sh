service mysql start

sleep 10

mysql_secure_installation <<EOF
y
secret
secret
y
n
n
y
EOF
mysql -u root -e "CREATE USER '${DBUSER}'@'localhost' IDENTIFIED BY 'secret';"
mysql -u root -e "CREATE USER '${DBUSER}'@'%' IDENTIFIED BY 'secret';"
mysql -u root -e "GRANT ALL ON *.* TO '${DBUSER}'@'localhost';"
mysql -u root -e "GRANT ALL ON *.* TO '${DBUSER}'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "CREATE DATABASE wordpress;"
