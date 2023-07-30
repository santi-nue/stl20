FROM jupyter/scipy-notebook:latest

USER jovyan

RUN git clone https://github.com/santi-nue/stl20.git ./dask-sql-binder
RUN cd dask-sql-binder && conda env update -f binder/environment.yml && . binder/postBuild && . binder/apt.txt && cd ..
