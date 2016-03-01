FROM resin/rpi-raspbian:jessie

MAINTAINER Oliver Kurth <okurth@gmail.com>

RUN apt-get update

RUN apt-get -q -y install python-twisted python-openssl python-pyasn1 python-pyasn1-modules python-autobahn
RUN apt-get -q -y install curl unzip
RUN apt-get clean

RUN cd /root && curl -O http://honeyproxy.org/download/honeyproxy-latest.zip && unzip honeyproxy-latest.zip

ADD honeyproxy.sh /root/honeyproxy.sh

EXPOSE 8080 8081 8082

VOLUME /conf
VOLUME /dump

CMD ["/root/honeyproxy.sh"]

