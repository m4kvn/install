#!/bin/sh

brew install zsh

zsh=/usr/local/bin/zsh

if [ ! $(cat /etc/shells | grep $zsh) ]; then
    echo $zsh | sudo tee -a /etc/shells
fi

chsh -s $zsh
