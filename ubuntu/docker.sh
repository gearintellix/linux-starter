#!/bin/bash

if [ -z "$(which brew)" ]; then
    ./brew.sh
fi

if [ -z "$(which brew)" ]; then
    echo "failed to install brew"
fi

if [ -z "$(which docker)" ]; then
    brew install docker
    brew install docker-compose
fi

if [ -z "$(which docker)" ]; then
    echo "failed to install docker"
    exit 1
fi

sudo apt update
sudo apt upgrade

sudo apt-get --assume-yes install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update

sudo apt-get --assume-yes install docker-ce

if [ ! -z "$(which service)" ]; then
    sudo service docker start
fi

echo 'done'
