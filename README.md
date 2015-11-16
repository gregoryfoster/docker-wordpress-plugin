WordPress Plugin Development Docker Environment
-----------------------------------------------
This repository provides a baseline WordPress Plugin Development environment.  This Docker composition consists of two container images:
* *dwp-mysql*: MySQL (5.5)
* *dwp-wordpress*: WordPress (latest)

### Usage ###
1. Ensure you have [Docker installed](https://docs.docker.com/engine/installation/).
1. Run your [Docker machine or daemon](https://docs.docker.com/machine/).  On OS X, make note of the local IP address assigned to the machine, as that's where the WordPress container's web port will be made available.  You can always get that value using [docker-machine env](https://docs.docker.com/machine/reference/env/).
1. Clone this repository to your local machine.
1. cd docker-wordpress-plugin
1. docker-compose up
1. Clone your plugin code into wordpress/plugins, which is [a docker volume](https://docs.docker.com/compose/compose-file/#volumes-volume-driver) mounted at the WordPress container's wp-content/plugins directory.
1. Open your Docker machine's IP address in a web browser.  You'll be greeted by the WordPress installation screen.  Setup and sign in.
1. Activate and configure your plugin.
1. Work on your plugin code.  With this configuration, changes are immediately available to your local WordPress instance without the necessity to commit code.
1. docker-compose stop

### Notes ###
* The MySQL container image is not currently configured to persist state between builds.  Therefore, if you rebuild the container image, it will not retain any changes made to WordPress.  However, if you stop the services and restart them, the data will still be available.
