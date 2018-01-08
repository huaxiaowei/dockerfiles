FROM openjdk:8u131-jdk-alpine

ENV RELEASE=canal.deployer-1.0.25.tar.gz

WORKDIR /

ADD https://github.com/alibaba/canal/releases/download/v1.0.25/$RELEASE /canal/

RUN cd /canal/ && tar -xzf $RELEASE && rm $RELEASE