FROM jupyter/datascience-notebook

USER root

RUN rmdir work
RUN mkdir input
COPY input/train.h5 input/train.h5

COPY Models/kagglegym.py kagglegym.py
COPY Models/pca.py pca.py
COPY Models/data_analysis.ipynb data_analysis.ipynb
COPY Models/comparisions.ipynb comparisions.ipynb

RUN chown $NB_USER:$NB_GID /home/jovyan/kagglegym.py
RUN chown $NB_USER:$NB_GID /home/jovyan/pca.py
RUN chown $NB_USER:$NB_GID /home/jovyan/data_analysis.ipynb
RUN chown $NB_USER:$NB_GID /home/jovyan/comparisions.ipynb
RUN chown -R $NB_USER:$NB_GID /home/jovyan/input

RUN conda install pytables
