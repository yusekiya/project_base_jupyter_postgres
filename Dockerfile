FROM continuumio/anaconda3:4.3.0
RUN echo deb http://ftp.uk.debian.org/debian jessie-backports main >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y build-essential fonts-freefont-ttf ffmpeg && apt-get clean
RUN mkdir -p /project/notebook
RUN conda install -y --quiet jupyter psycopg2
COPY jupyter_notebook_config.py /root/.jupyter/
WORKDIR "/project"
CMD ["/opt/conda/bin/jupyter", "notebook"]
