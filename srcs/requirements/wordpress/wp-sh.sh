if [ ! -f "/var/www/html/wp/wp-login.php" ]; then


mkdir -p /var/www/html/wp

wp --path=/var/www/html/wp core download --allow-root
wp --path=/var/www/html/wp config create --dbname=wordpress --dbuser=mariadb_user --dbpass=secret --dbhost=mariadb --locale=en_US --allow-root
wp --path=/var/www/html/wp core install --url=https://aaqari.42.fr --title=Inception --admin_user=wpadmin --admin_password=secret --admin_email=admin@email.com --skip-email  --allow-root

fi

php-fpm7.3 -FR