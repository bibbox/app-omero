FROM jupyter/base-notebook

USER root

RUN	apt-get update && \ 
	apt-get install -y docker.io gcc g++ && \
	chown jovyan /var/run/docker.sock

USER jovyan

RUN pip install omero-py && pip install docker
