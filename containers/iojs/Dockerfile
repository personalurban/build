# Base image for dev
# Could be made skinnier
FROM dockerfile/ubuntu

# Install iojs 1.2.0
RUN wget https://iojs.org/dist/v1.2.0/iojs-v1.2.0-linux-x64.tar.gz && \
    tar zxf iojs-v1.2.0-linux-x64.tar.gz && \
    ln -s /root/iojs-v1.2.0-linux-x64/bin/* /usr/bin

RUN apt-get update && \
    apt-get install -y python2.7 && \
    ln -s /usr/bin/python2.7 /usr/bin/python && \
    ln -s /usr/bin/python2.7 /usr/bin/python2

CMD ["node"]
