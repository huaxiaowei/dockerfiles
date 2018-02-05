FROM alpine:latest

RUN apk update
    && apk add bash python
    && pip install requests

COPY runner.python /runner.python

WORKDIR /

ENTRYPOINT ['python','runner.python']