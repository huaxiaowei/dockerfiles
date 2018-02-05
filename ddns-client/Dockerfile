FROM alpine:latest

RUN apk update && apk add bash wget

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /

ENTRYPOINT docker-entrypoint.sh