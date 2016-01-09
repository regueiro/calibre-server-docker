FROM ubuntu:xenial
MAINTAINER santi@regueiro.es

RUN apt-get update -y && apt-get dist-upgrade -y

RUN apt-get install -y calibre

RUN apt-get clean

RUN rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*rack*.com* && rm -rf /var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_precise-security_*


EXPOSE 8080

RUN mkdir /opt/calibre && mkdir /opt/calibre/library

VOLUME        ["/opt/calibre/library"]
ENTRYPOINT           ["/usr/bin/calibre-server", "--with-library=/opt/calibre/library"]
