#!/bin/bash

if [ -z "$(which brew)" ] then
    ./zsh.sh
fi

if [ -z "$(which brew)" ] then
    echo "failed to install brew"
fi

brew install docker
brew install docker-compose

if [ -z "$(which docker)" ] then
    echo "failed to install docker"
    exit 1
fi

sudo apt update
sudo apt upgrade

sudo apt-get install docker-ce

echo 'done'
