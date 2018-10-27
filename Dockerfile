FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    curl \
    git \
    less \
    nano \
    sudo

# enable color prompt
RUN sed -ie 's/#force_color_prompt/force_color_prompt/' /root/.bashrc
