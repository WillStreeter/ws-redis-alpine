FROM alpine:3.5

MAINTAINER Will Streeter <will.streeter@gmail.com>

#Install Redis

COPY entrypoint.sh /entrypoint.sh

EXPOSE 6379

ENV APK_MIRROR http://dl-4.alpinelinux.org

RUN echo "$APK_MIRROR/alpine/v3.5/main" >> /etc/apk/repositories && \
    apk add --update redis=3.2.5-r0  &&\
    rm -rf  /var/cache/apk/*   &&\
    chmod +x /entrypoint.sh


ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]