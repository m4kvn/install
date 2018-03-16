#!/bin/sh

if [ ! -n "$(brew cask list | grep -w atom)" ]; then
    brew cask install atom
fi
