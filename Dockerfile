FROM continuumio/anaconda3:4.3.0
RUN echo deb http://ftp.uk.debian.org/debian jessie-backports main >> /etc/apt/sources.list &&\
    apt-get update && apt-get install -y build-essential fonts-freefont-ttf ffmpeg &&\
    apt-get clean &&\
    conda install -y --quiet jupyter psycopg2 &&\
    # conda install -y --quiet -c conda-forge jupyter_nbextensions_configurator jupyter_contrib_nbextensions &&\
    mkdir -p /project/notebook
COPY jupyter_notebook_config.py /root/.jupyter/
WORKDIR "/project"
CMD ["/opt/conda/bin/jupyter", "notebook"]
