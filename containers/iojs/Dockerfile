# Base image for dev
# Could be made skinnier
FROM dockerfile/ubuntu

ENV IOJS_VERSION 2.3.4

# Install iojs 2.3.4
RUN wget https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz && \
    tar zxf iojs-v$IOJS_VERSION-linux-x64.tar.gz && \
    ln -s /root/iojs-v$IOJS_VERSION-linux-x64/bin/* /usr/bin

RUN apt-get update && \
    apt-get install -y python2.7 && \
    ln -s /usr/bin/python2.7 /usr/bin/python && \
    ln -s /usr/bin/python2.7 /usr/bin/python2

CMD ["node"]
