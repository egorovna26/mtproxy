FROM alpine
WORKDIR /app
EXPOSE 2398
EXPOSE 443
COPY run.sh /app
COPY objs/bin/mtproto-proxy /app
ENTRYPOINT ["run.sh"]
