FROM elasticsearch:2.4.2

RUN bin/plugin install delete-by-query

RUN wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v1.10.2/elasticsearch-analysis-ik-1.10.2.zip \
    && mkdir ./plugins/ik/\
    && mv elasticsearch-analysis-ik-1.10.2.zip ./plugins/ik/ \
    && cd ./plugins/ik/ \
    && unzip elasticsearch-analysis-ik-1.10.2.zip \
    && rm elasticsearch-analysis-ik-1.10.2.zip && cd ../..

COPY ./mydict.dic /usr/share/elasticsearch/plugins/ik/config/custom/

RUN wget https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v1.8.2/elasticsearch-analysis-pinyin-1.8.2.zip \
     && mkdir ./plugins/pinyin/\
     && mv elasticsearch-analysis-pinyin-1.8.2.zip ./plugins/pinyin/ \
     && cd ./plugins/pinyin/ \
     && unzip elasticsearch-analysis-pinyin-1.8.2.zip \
     && rm elasticsearch-analysis-pinyin-1.8.2.zip && cd ../..