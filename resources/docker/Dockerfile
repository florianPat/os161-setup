FROM ubuntu:16.04

# Install os-161 toolchain
RUN apt update && apt install -y software-properties-common
RUN add-apt-repository ppa:ops-class/os161-toolchain
RUN apt update
RUN apt install -y os161-toolchain git build-essential/xenial

ARG GROUP_ID
ARG U_ID

RUN groupadd -g $GROUP_ID app && adduser -u $U_ID --gid $GROUP_ID app

USER app:app

RUN mkdir -p $HOME/os161/src

WORKDIR /home/app/os161

CMD resources/docker/entrypoint.sh
