#!/bin/sh

version=v9.2.0
root=~/.nvm

if [ ! -s $root ]; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
fi

if [ ! -s $root/versions/node/$version ]; then
    . $root/nvm.sh
    nvm install $version
fi
