# OMERO BIBBOX application

## Hints
* approx. time with medium fast internet connection: **15 minutes**
* initial user/passwordd: **root / omero**


## Docker Images Used
 * [openmicroscopy/omero-grid](https://hub.docker.com/r/openmicroscopy/omero-grid/)
 * [openmicroscopy/omero-grid-web](https://hub.docker.com/r/openmicroscopy/omero-grid-web/) 
 * [postgres](https://hub.docker.com/_/mysql/), offical mySQL container
 * [busybox](https://hub.docker.com/_/busybox/), offical data container
 
## Install Environment Variables
  *	POSTGRES_PASSWORD = password for the postgres DB

## Mounted Volumes

* the postgres datafolder _/var/lib/postgresql/data_ will be mounted to _/var/lib/postgresql/data_ in your BIBBOX kit 
