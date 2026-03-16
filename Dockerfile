FROM alpine
WORKDIR /app
EXPOSE 2398 443
COPY run.sh /app
RUN chmod +x /app/run.sh
COPY objs/bin/mtproto-proxy /app
RUN chmod +x /app/mtproto-proxy
ENTRYPOINT ["run.sh"]
