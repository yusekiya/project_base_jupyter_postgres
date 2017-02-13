FROM continuumio/anaconda3:4.3.0
RUN mkdir -p /project/notebook
RUN conda install -y --quiet jupyter psycopg2
COPY jupyter_notebook_config.py /root/.jupyter/
WORKDIR "/project"
CMD ["/opt/conda/bin/jupyter", "notebook"]
