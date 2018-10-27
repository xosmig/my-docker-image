FROM ubuntu:18.04

# avoid warnings from apt-get
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils

RUN apt-get update && apt-get install -y \
    curl \
    git \
    less \
    nano \
    sudo

# install ip, ping and wget
RUN apt-get update && apt-get install -y \
    iproute2 \
    iputils-ping \
    wget

# enable color prompt
RUN sed -ie 's/#force_color_prompt/force_color_prompt/' /root/.bashrc
