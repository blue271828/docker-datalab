FROM  python:3.6.10-slim-stretch
LABEL maintainer="blue271828"

ARG NB_USER="jovyan"
ARG NB_UID="1000"
ARG NB_GID="100"


RUN useradd -mN -u ${NB_UID} -g ${NB_GID} ${NB_USER}
ENV HOME=/home/${NB_USER}
ENV PATH=${HOME}/.local/bin:$PATH
USER ${NB_USER}
WORKDIR ${HOME}


RUN pip install -U pip \
 && pip install -U --no-cache-dir \
    jupyterlab


EXPOSE 8888
ENTRYPOINT [ "jupyter-lab" ]
CMD [ "--port=8888", "--ip=0.0.0.0" ]
