#!/bin/sh

if [ ! $(brew cask list | grep -w google-chorme) ]; then
    brew cask install google-chrome
fi
