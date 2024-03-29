FROM ghcr.io/sa4zet-org/docker.img.python:latest

ARG docker_img
ENV DOCKER_TAG=$docker_img

RUN apt-get update \
  && apt-get -y install \
    chromium-driver

RUN apt-get --purge -y autoremove \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/*
