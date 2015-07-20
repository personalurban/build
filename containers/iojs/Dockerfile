
FROM ubuntu:15.04
MAINTAINER Matt Styles <matt@veryfizzyjelly.com>

ENV IOJS_VERSION 2.4.0

# Wget is useful
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y wget

# Install iojs 2.4.0
RUN wget https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz && \
    tar zxf iojs-v$IOJS_VERSION-linux-x64.tar.gz && \
    ln -s /root/iojs-v$IOJS_VERSION-linux-x64/bin/* /usr/bin

RUN apt-get update && \
    apt-get install -y python2.7 && \
    ln -s /usr/bin/python2.7 /usr/bin/python && \
    ln -s /usr/bin/python2.7 /usr/bin/python2

CMD ["node"]
