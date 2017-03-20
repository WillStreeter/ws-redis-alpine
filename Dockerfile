FROM alpine:3.5

MAINTAINER Will Streeter <will.streeter@gmail.com>

#Install Redis

EXPOSE 6379

COPY entrypoint.sh /entrypoint.sh


ENV APK_MIRROR http://dl-4.alpinelinux.org

RUN apk update \
  && apk add \
    redis \
  && rm -rf \
    /tmp/* \
    /var/cache/apk/* \
  && chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]