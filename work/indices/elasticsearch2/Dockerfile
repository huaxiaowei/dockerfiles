FROM elasticsearch:2.4.5-alpine

# 中文分词器处理
COPY ./elasticsearch-analysis-ik-1.10.5.zip /

RUN mkdir /ik \
    && unzip /elasticsearch-analysis-ik-1.10.5.zip -d /ik \
    && mv /ik /usr/share/elasticsearch/plugins

## 同义词支持远程热更新
COPY ./elasticsearch-analysis-dynamic-synonym-2.4.5.zip /

RUN mkdir /dynamic-synonym \
    && unzip /elasticsearch-analysis-dynamic-synonym-2.4.5.zip -d /dynamic-synonym \
    && mv /dynamic-synonym /usr/share/elasticsearch/plugins

RUN bin/plugin install delete-by-query