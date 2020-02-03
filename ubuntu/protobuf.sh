#!/bin/bash

PROTOBUF_VERSION="3.7.1"

curl -OL https://github.com/google/protobuf/releases/download/v$PROTOBUF_VERSION/protoc-$PROTOBUF_VERSION-linux-x86_64.zip
unzip protoc-$PROTOBUF_VERSION-linux-x86_64.zip -d _outp

sudo mv _outp/include/* /usr/local/include/
sudo chown -R $USER /usr/local/include/google

sudo rm -R _outp

