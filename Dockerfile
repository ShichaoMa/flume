FROM debian:jessie
LABEL maintainer "Chuande Wang <chuandewang@foxmail.com>"
COPY ./sources/sources.list /etc/apt/sources.list

RUN apt-get update && apt install -y -t jessie-backports  openjdk-8-jre-headless ca-certificates-java

ENV BASE /flume
RUN mkdir -p $BASE
WORKDIR $BASE
COPY . .
CMD ["./start-flume"]
