#FROM jupyter/base-notebook

#USER root

#RUN	apt-get update && \ 
#	apt-get install -y docker.io gcc g++ git

#USER jovyan

#RUN cd /home/jovyan && \
#	git clone https://github.com/ome/omero-guide-python.git && cd omero-guide-python &&\
#	conda create -n omeropy python=3.6 && \
#	conda env update -n omeropy --file binder/environment.yml &&  conda init bash && \
#	conda activate omeropy && pip install docker && pip install ipykernel && \
#	python -m ipykernel install --user --name=omeropy

FROM jupyter/datascience-notebook:latest

USER root

RUN	apt-get update -y && apt-get upgrade -y &&\ 
	apt-get install -y docker.io gcc g++ git apt-utils && \
	apt-get install -y build-essential checkinstall zlib1g-dev && \
	apt-get install -y libssl-dev libbz2-dev libclang-dev

USER jovyan

ARG conda_env=python36
ARG py_ver=3.6

# you can add additional libraries you want mamba to install by listing them below the first line and ending with "&& \"
RUN mamba create --quiet --yes -p "${CONDA_DIR}/envs/${conda_env}" python=${py_ver} ipython ipykernel && \
    mamba clean --all -f -y

# create Python 3.x environment and link it to jupyter
RUN "${CONDA_DIR}/envs/${conda_env}/bin/python" -m ipykernel install --user --name="${conda_env}" && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# any additional pip installs can be added by uncommenting the following line
RUN "${CONDA_DIR}/envs/${conda_env}/bin/pip" install omero-py
RUN "${CONDA_DIR}/envs/${conda_env}/bin/pip" install docker 
RUN "${CONDA_DIR}/envs/${conda_env}/bin/pip" install pandas

# prepend conda environment to path
ENV PATH "${CONDA_DIR}/envs/${conda_env}/bin:${PATH}"

# if you want this environment to be the default one, uncomment the following line:
ENV CONDA_DEFAULT_ENV ${conda_env}

# Install the Dask dashboard
RUN pip install --quiet --no-cache-dir dask-labextension && \
 	fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Dask Scheduler & Bokeh ports
EXPOSE 8787
EXPOSE 8786

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
