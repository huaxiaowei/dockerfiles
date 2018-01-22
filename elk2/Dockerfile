FROM elasticsearch:2.4.2

RUN bin/plugin install delete-by-query

RUN wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v1.10.2/elasticsearch-analysis-ik-1.10.2.zip \
    && mkdir ./plugins/zk/\
    && mv elasticsearch-analysis-ik-1.10.2.zip ./plugins/zk/ \
    && cd ./plugins/zk/ \
    && unzip elasticsearch-analysis-ik-1.10.2.zip \
    && rm elasticsearch-analysis-ik-1.10.2.zip && cd ../..

RUN wget https://github.com/xpttxsok123/pinyin/blob/master/elasticsearch-analysis-pinyin-1.8.2.jar \
    && wget https://github.com/xpttxsok123/pinyin/blob/master/nlp-lang-1.7.jar \
    && wget https://github.com/xpttxsok123/pinyin/blob/master/plugin-descriptor.properties \
    && mkdir ./plugins/pinyin/ \
    && mv elasticsearch-analysis-pinyin-1.8.2.jar ./plugins/pinyin/ \
    && mv nlp-lang-1.7.jar ./plugins/pinyin/ \
    && mv plugin-descriptor.properties ./plugins/pinyin/