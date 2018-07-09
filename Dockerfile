FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates duplicity locales python-pip && \
    pip install boto && \
    locale-gen en_US.UTF-8 && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

WORKDIR /usr/src/app/backup
