#!/bin/bash

if [ -z "$(which brew)" ] then
    ./zsh.sh
fi

if [ -z "$(which brew)" ] then
    echo "failed to install brew"
fi

brew install zsh

export zsh_path="$(which zsh)"
sudo bash -c 'which zsh >> /etc/shells'

sudo chsh -s ${which zsh}

source ~/.zshrc

if [ -z "$(which zsh)" ] then
    echo 'failed to install zsh'
    exit 1
fi

echo 'done'
