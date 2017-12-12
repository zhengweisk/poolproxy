FROM alpine:latest
MAINTAINER sk
ENV TZ "Asia/Shanghai"
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main" > /etc/apk/repositories
RUN apk add --update \
    bash \
    python \
    python-dev \
    py-pip \
    supervisor
ADD supervisord.conf /supervisord.conf
ADD p.py /p.py
RUN mkdir /var/log/supervisor/

expose 8001
expose 8002
expose 8003
expose 8004
expose 8005
expose 8006
expose 8007
expose 8008
expose 8009
expose 8010
expose 8011
expose 8012
expose 8013
expose 8014
expose 8015
expose 8016
expose 8017
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/supervisord.conf"]
