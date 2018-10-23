# VERSION: latest
# BUILD: docker build --rm -t csomgyula/docker-airflow .

FROM puckel/docker-airflow

LABEL maintainer="csomgyula"

ARG AIRFLOW_HOME=/usr/local/airflow
WORKDIR ${AIRFLOW_HOME}

RUN mkdir ${AIRFLOW_HOME}/dags
COPY dags/runtimeparams.py ${AIRFLOW_HOME}/dags/runtimeparams.py