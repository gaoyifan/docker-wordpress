FROM smartentry/debian:bullseye-0.4.4

MAINTAINER Yifan Gao <docker@yfgao.com>

COPY . $ASSETS_DIR

RUN smartentry.sh build

EXPOSE 80

VOLUME /var/log /var/www/public

CMD ["/usr/bin/supervisord"]
