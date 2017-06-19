FROM elasticsearch:2.4.4-alpine

COPY ./elasticsearch-analysis-ik-1.10.4.zip /

RUN mkdir /ik \
    && unzip /elasticsearch-analysis-ik-1.10.4.zip -d /ik \
    && mv /ik /usr/share/elasticsearch/plugins

RUN bin/plugin install delete-by-query