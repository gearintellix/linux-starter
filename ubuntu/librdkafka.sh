#!/bin/bash

if [ -z "$(which brew)" ]; then
    ./brew.sh
fi

if [ -z "$(which brew)" ]; then
    echo "failed to install brew"
fi

brew install librdkafka pkg-config
