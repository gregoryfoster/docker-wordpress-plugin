docker create \
  --name dwp-wordpress \
  --publish=$DWP_WORDPRESS_PORT:80 \
  --link dwp-mysql:mysql \
  --volume=$DWP_WORDPRESS_PLUGIN_DIRECTORY:/var/www/html/wp-content/plugins \
  --env=WORDPRESS_DB_NAME=$DWP_MYSQL_DATABASE \
  --env=WORDPRESS_DB_USER=$DWP_MYSQL_USER \
  --env=WORDPRESS_DB_PASSWORD=$DWP_MYSQL_USER_PASSWORD \
  --env=WORDPRESS_TABLE_PREFIX=$DWP_WORDPRESS_TABLE_PREFIX \
  wordpress:$DWP_WORDPRESS_VERSION_TAG
