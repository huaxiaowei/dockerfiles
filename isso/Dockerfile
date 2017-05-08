FROM alpine:3.5

ARG ISSO_VER=0.10.6

ENV GID=1000 UID=1000

RUN echo "https://mirrors.ustc.edu.cn/alpine/v3.5/main" > /etc/apk/repositories \
 && echo "@community https://mirrors.ustc.edu.cn/alpine/v3.5/community" >> /etc/apk/repositories \
 && BUILD_DEPS=" \
    python-dev \
    libffi-dev \
    py2-pip \
    build-base" \
 && apk -U add \
    ${BUILD_DEPS} \
    python \
    py-setuptools \
    sqlite \
    libressl \
    ca-certificates \
    su-exec \
    tini@community \
 && pip install -i https://pypi.douban.com/simple --no-cache cffi \
 && pip install -i https://pypi.douban.com/simple --no-cache misaka==1.0.2 \
 && pip install -i https://pypi.douban.com/simple --no-cache "isso==${ISSO_VER}" \
 && apk del ${BUILD_DEPS} \
 && rm -rf /var/cache/apk/* /tmp/*

COPY run.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/run.sh

VOLUME /db /config

COPY isso.conf /config/

LABEL maintainer="Wonderfall <wonderfall@targaryen.house>"

CMD ["run.sh"]