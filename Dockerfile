FROM smartentry/debian:bullseye

MAINTAINER Yifan Gao <docker@yfgao.com>

COPY . $ASSETS_DIR

RUN smartentry.sh build

EXPOSE 80

VOLUME /var/log /var/www/public

CMD ["/usr/bin/supervisord"]
