# 
# Template for extending Jupyter stacks with project dependencies
# 

ARG BASE_CONTAINER=jupyter/minimal-notebook

FROM $BASE_CONTAINER

LABEL author="Ashwin A Nayar"

USER root

RUN pip install \
    numpy \
    matplotlib

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

