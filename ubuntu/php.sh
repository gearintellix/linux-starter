#!/bin/bash

if [ -z "$(which brew)" ]; then
    ./brew.sh
fi

if [ -z "$(which brew)" ]; then
    echo "failed to install brew"
fi

brew install php

if [ -z "$(which php -v)" ]; then
    echo 'failed to install php'
fi

echo 'done'
