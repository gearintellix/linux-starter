#!/bin/bash

apt-get update
apt-get install software-properties-common git -y
git clone https://github.com/edenhill/librdkafka.git && \
    cd librdkafka && \
    ./configure --prefix /usr && \
    make && \
    make install && \
    apt-get install pkg-config -y
cd ..
rm -R librdkafka
