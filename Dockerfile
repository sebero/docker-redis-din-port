FROM        ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

ENV PORT=6379

RUN apt-get update && apt-get install -y redis-server

ADD ./initredis.sh /tmp/initredis.sh

RUN chmod +x /tmp/initredis.sh

CMD  ["/tmp/initredis.sh"]