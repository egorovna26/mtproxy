FROM ubuntu:22.04

WORKDIR /opt/mtproxy

EXPOSE 2398 443

COPY run.sh /opt/mtproxy

RUN chmod +x /opt/mtproxy/run.sh

COPY objs/bin/mtproto-proxy /opt/mtproxy

RUN chmod +x /opt/mtproxy/mtproto-proxy

RUN apt-get update && apt-get install -y git curl build-essential libssl-dev zlib1g-dev

ENTRYPOINT ["/opt/mtproxy/run.sh"]
