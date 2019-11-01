#!/bin/bash

if [ ! -z "$(which brew)" ]; then
	echo 'brew was installed'
	exit 0
fi

sudo apt update
sudo apt upgrade

sudo apt --assume-yes install build-essential curl file git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >> ~/.profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >> ~/.bashrc
source ~/.bashrc

if [ -z "$(which brew)" ]; then
    echo 'failed to install brew'
    exit 1
fi

brew install gcc

echo 'done'
