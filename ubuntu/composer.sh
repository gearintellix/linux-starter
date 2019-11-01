#!/bin/bash

if [ -z "$(which brew)" ]; then
    ./brew.sh
fi

if [ -z "$(which brew)" ]; then
    echo "failed to install brew"
fi

if [ -z "$(which php -v)" ]; then
    ./php.sh
fi

if [ -z "$(which php -v)" ]; then
    echo "failed to install php"
fi

brew install composer

if [ -z "$(which composer)" ]; then
    echo 'failed to install composer'
fi

echo 'done'
