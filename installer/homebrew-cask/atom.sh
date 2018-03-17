#!/bin/sh

if [ ! -n "$(brew cask list | grep -w atom)" ]; then
    brew cask install atom
fi

if [ ! -s ~/.atom/packages/sync-settings ]; then
    apm install sync-settings
fi
