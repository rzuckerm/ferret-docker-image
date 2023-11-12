FROM ubuntu:22.04

COPY FERRET_* /tmp/
RUN apt-get update && \
    apt-get install -y wget g++ openjdk-11-jdk && \
    wget https://ferret-lang.org/builds/ferret -O /usr/local/bin/ferret && \
    chmod +x /usr/local/bin/ferret && \
    apt-get remove -y wget && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
