FROM elasticsearch:2.4.5-alpine

COPY ./elasticsearch-analysis-ik-1.10.5.zip /

RUN mkdir /ik \
    && unzip /elasticsearch-analysis-ik-1.10.5.zip -d /ik \
    && mv /ik /usr/share/elasticsearch/plugins

RUN bin/plugin install delete-by-query