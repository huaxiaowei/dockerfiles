FROM ubuntu

MAINTAINER caryyu<343194291@qq.com>

COPY ./run.sh /

ADD http://dl.cnezsoft.com/zentao/9.2.1/ZenTaoPMS.9.2.1.zbox_64.tar.gz /

RUN tar zxvf ZenTaoPMS.9.2.1.zbox_64.tar.gz -C /opt/

ENTRYPOINT ["bash", "run.sh"]