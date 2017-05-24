FROM ubuntu

MAINTAINER caryyu<343194291@qq.com>

ADD http://dl.cnezsoft.com/zentao/9.2.1/ZenTaoPMS.9.2.1.zbox_64.tar.gz /

RUN tar zxvf ZenTaoPMS.9.2.1.zbox_64.tar.gz -C /opt/

ENTRYPOINT ["bash", "/opt/zbox/zbox start && tail -f /dev/null"]