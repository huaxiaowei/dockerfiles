FROM fluent/fluentd:v0.12.30

RUN gem sources --remove https://rubygems.org/
RUN gem sources -a https://ruby.taobao.org/
RUN gem sources -u
RUN gem install fluent-plugin-elasticsearch

COPY ./fluent.conf /fluentd/etc/
