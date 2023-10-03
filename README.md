# omero BIBBOX application

This container can be installed as [BIBBOX APP](https://bibbox.readthedocs.io/en/latest/ "BIBBOX App Store") or standalone. 

After the docker installation follow these [instructions](INSTALL-APP.md).

## Standalone Installation 

Clone the github repository. If necessary change the ports in the environment file `.env` and the volume mounts in `docker-compose.yml`.

```
git clone https://github.com/bibbox/app-omero
cd app-omero
docker network create bibbox-default-network
docker-compose up -d
```

The main App can be opened and set up at:
```
http://localhost:4080
```

## Install within BIBBOX

Visit the BIBBOX page and find the App by its name in the store. Click on the symbol and select install. Then fill the parameters below and name your App, click install again.

## Docker Images used
  - [postgres](https://hub.docker.com/r/postgres) 
  - [openmicroscopy/omero-server](https://hub.docker.com/r/openmicroscopy/omero-server) 
  - [openmicroscopy/omero-web-standalone](https://hub.docker.com/r/openmicroscopy/omero-web-standalone) 
  - [jupyter/omero-notebook](https://hub.docker.com/r/jupyter/omero-notebook) 


 
## Install Environment Variables
  - POSTGRES_PASSWORD =  Password for Postgres DB (change in production environments)
  - JUPYTER_TOKEN = Configures Jupyter Notebook to require the given plain-text token. Should be combined with USE_HTTPS on untrusted networks. Note that this option is not recommended for production!

  
The default values for the standalone installation are:
  - POSTGRES_PASSWORD = changethispasswordinproductionenvironments
  - JUPYTER_TOKEN = token

  
## Mounted Volumes
### postgres Container
  - *./data/postgres:/var/lib/postgresql/data:rw*
### openmicroscopy/omero-server Container
  - *./data/OMERO:/OMERO*
  - */home/simon/Documents/master_wsi_annot/LYTestCases/022:/OMERO/share*
### jupyter/omero-notebook Container
  - *./data/notebooks:/home/jovyan/work*
  - */var/run/docker.sock:/var/run/docker.sock:rw*

