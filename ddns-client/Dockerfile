FROM python:3

RUN pip install requests -i https://pypi.tuna.tsinghua.edu.cn/simple

ADD ./docker-entrypoint.sh /
ADD ./runner.python /runner.python
RUN chmod u+x /docker-entrypoint.sh

WORKDIR /

ENTRYPOINT ["docker-entrypoint.sh"]