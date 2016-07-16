FROM debian:jessie
MAINTAINER Yifan Gao <git@gaoyifan.com>

COPY assets /etc/docker-assets

COPY smartentry/entrypoint.sh /sbin/entrypoint.sh

RUN /sbin/entrypoint.sh build

ENTRYPOINT ["/sbin/entrypoint.sh"]

EXPOSE 80

VOLUME /var/log

CMD ["/usr/bin/supervisord"]
