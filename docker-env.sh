#
# Development environment.  These environment variables are for reference only,
# actual values used are hardcoded in the Docker configuration files.
#
export PROJECT_ROOT=.

#
# MySQL environment variables
#
export DWP_MYSQL_DIRECTORY=./mysql
export DWP_MYSQL_VERSION_TAG=5.5
export DWP_MYSQL_DATABASE=wp_consunion
export DWP_MYSQL_USER=wp_consunion
export DWP_MYSQL_USER_PASSWORD=123456
export DWP_MYSQL_ROOT_PASSWORD=123456

#
# WordPress environment variables
#
export DWP_WORDPRESS_DIRECTORY=./wordpress
export DWP_WORDPRESS_VERSION_TAG=latest
export DWP_WORDPRESS_PORT=80
export DWP_WORDPRESS_PLUGIN_DIRECTORY=./wordpress/plugins
export DWP_WORDPRESS_TABLE_PREFIX="wp_"
