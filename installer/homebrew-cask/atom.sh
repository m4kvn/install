#!/bin/sh

if [ ! -s ~/.atom ]; then
    git clone https://github.com/m4kvn/atom.git ~/.atom
else
    cd ~/.atom
    git fetch
    git pull origin master
fi

if [ ! -n "$(brew cask list | grep -w atom)" ]; then
    brew cask install atom
fi
