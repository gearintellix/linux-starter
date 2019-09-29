#!/bin/bash

if [ -z "$(which brew)" ]; then
    ./brew.sh
fi

if [ -z "$(which brew)" ]; then
    echo "failed to install brew"
fi

if [ -z "$(which zsh)" ]; then
    brew install zsh
fi

if [ -z "$(cat /etc/shells | grep $(which zsh))" ]; then
    sudo bash -c 'echo $0 >> /etc/shells' "$(which zsh)"
fi

sudo chsh -s $(which zsh) $USER

if [ -f ~/.zshrc ]; then
    if [ ! -d ~/.oh-my-zsh ]; then
         wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    fi

    if [ -z "$(which zsh)" ]; then
        echo 'failed to install zsh'
        exit 1
    fi

    echo "source ~/.profile" >> ~/.zshrc

    echo 'done, restart your terminal'
    exit 0
fi

echo 'please re-setup with execute zsh'
