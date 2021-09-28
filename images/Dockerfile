FROM jupyter/base-notebook

USER root

RUN	apt-get update && \ 
	apt-get install -y docker.io gcc g++

USER jovyan

RUN pip install omero-py && pip install docker && pip install ipykernel\
	git clone https://github.com/ome/omero-guide-python.git && \
	conda create -n omeropy python=3.6 && \
	conda env update -n omeropy --file binder/environment.yml && \
	python -m ipykernel install --user --name=omeropy
