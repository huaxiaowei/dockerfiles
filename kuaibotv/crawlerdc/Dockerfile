FROM openjdk:8-jre-alpine

ADD ./crawlerdc-1.0-SNAPSHOT-bin.tar.gz /

WORKDIR /crawlerdc-1.0-SNAPSHOT

ENTRYPOINT ["java","-jar","crawlerdc-1.0-SNAPSHOT.jar"]

CMD ["tcp://activemq:61616","MSG"]