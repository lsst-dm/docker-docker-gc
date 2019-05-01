FROM alpine:3.9 as downloader

ARG GC_URL=https://raw.githubusercontent.com/spotify/docker-gc/master/docker-gc

RUN apk add --no-cache --upgrade curl
RUN curl -sSLo /docker-gc ${GC_URL}

FROM alpine:3.9

# docker-gc is #!/bin/bash
RUN apk add --no-cache --upgrade docker bash

COPY --from=downloader /docker-gc /usr/local/bin/docker-gc
RUN chmod 0555 /usr/local/bin/docker-gc
