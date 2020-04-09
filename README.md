# OMERO BIBBOX application

## Hints
* approx. time with medium fast internet connection: **15 minutes**
* initial user/password: **root / omero**


## Docker Images Used
 * [openmicroscopy/omero-server:5.6](https://hub.docker.com/r/openmicroscopy/omero-server/)
 * [openmicroscopy/omero-web-standalone](https://hub.docker.com/r/openmicroscopy/omero-web-standalone/) 
 * [postgres](https://hub.docker.com/_/postgres/),
 * [busybox](https://hub.docker.com/_/busybox/), offical data container
 
## Install Environment Variables
  *	POSTGRES_PASSWORD = password for the postgres DB

## Mounted Volumes

* the postgres datafolder _/var/lib/postgresql/data_ will be mounted to data within the application-instance folder(/opt/bibbox/application-instance/<inst.-name>-app-omero) in your BIBBOX kit 
Further a folder in the home directory will be shared to the server container for script transfer and data testing. See the docker-compose template in busybox declaration.
