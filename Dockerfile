FROM alpine:3.9 as downloader

ARG GC_URL=https://raw.githubusercontent.com/spotify/docker-gc/master/docker-gc

RUN apk add --no-cache --upgrade curl
RUN curl -sSLo /docker-gc ${GC_URL}

FROM alpine:3.9

RUN apk add --no-cache --upgrade docker dcron

COPY --from=downloader /docker-gc /usr/local/bin/docker-gc
RUN chmod 0555 /usr/local/bin/docker-gc

RUN rm -f /etc/crontabs/root
COPY root /etc/crontabs/root

CMD /usr/sbin/crond -l6 -L /var/log/cron.log && tail -F /var/log/cron.log
