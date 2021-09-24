FROM jupyter/base-notebook

USER root

RUN	apt-get update && \ 
	apt-get install -y docker.io gcc g++

USER jovyan

RUN pip install omero-py && pip install docker
