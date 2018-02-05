FROM alpine:latest

RUN echo "http://mirrors.nju.edu.cn/alpine/v3.7/main" > /etc/apk/repositories \
    && echo "http://mirrors.nju.edu.cn/alpine/v3.7/community" >> /etc/apk/repositories

RUN apk update \
    && apk add bash python py-pip \
    && pip install requests

ADD ./docker-entrypoint.sh /
ADD ./runner.python /runner.python
RUN chmod u+x /docker-entrypoint.sh

WORKDIR /

ENTRYPOINT ["/docker-entrypoint.sh"]