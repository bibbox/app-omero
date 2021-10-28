# OMERO BIBBOX application

This container can be installed as [BIBBOX APP](http://silicolabv4.bibbox.org/applications "BIBBOX App Store") or standalone. 

* initial user/passwordd: **root / omero**

## Standalone Installation 

To install the app locally execute the commands:

`sudo git clone https://github.com/bibbox/app-omero`

`cd app-omero` <br>
`sudo chmod -R 777 data/` <br>
`docker-compose up -d` <br>

After the Installation open "http://localhost:4080"

Stadart Port for omero-web is 4080

If necessary change the ports in the environment file .env and the volume mounts in `docker-compose.yml`.

## Install within BIBBOX

* Follow the link above and find the App by its name. Click on the Symbol and select Install. Then fill the Parameters below and Name your app Click install again

## Docker Images Used
 * [openmicroscopy/omero-server:5.6](https://hub.docker.com/r/openmicroscopy/omero-server/)
 * [openmicroscopy/omero-web-standalone:5.6](https://hub.docker.com/r/openmicroscopy/omero-web-standalone/) 
 * [postgres](https://hub.docker.com/_/postgres/), offical postgres container
 
## Install Environment Variables
  *	POSTGRES_PASSWORD = password for the postgres DB
  *	JUPYTER_TOKEN = Token for a jupyther Notebook to allow controlling omero server functions from the python shell (ONLY IN BIBBOX APP)
  *	NOTE: These parameters are not neccesary to be set in the local installation. They can be found in the docker-compose.yml file

## Mounted Volumes
### OMERO DB container 
* the postgres datafolder _/var/lib/postgresql/data_ will be mounted to _data/postgres_ in your BIBBOX kit 
### OMERO DB container
* the omero data container _/OMERO_ will be mounted to _/data/OMERO_ 
