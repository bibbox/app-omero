FROM jupyter/base-notebook

USER root

RUN apt-get install docker.io gcc g++ omero-py && \
	chwon jovyan /var/run/docker.sock

USER jovyan

RUN pip install omero-py && pip install docker
