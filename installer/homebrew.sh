#!/bin/bash

if [[ ! $(xcode-select -p 2>/dev/null) ]]; then
    echo "unable to get active developer directory."
    echo "Please execute command \"xcode-select --install\""
    exit 1
fi

homebrew=https://raw.githubusercontent.com/Homebrew

if [[ ! $(brew --version 2>/dev/null) ]]; then
    /usr/bin/ruby -e "$(curl -fsSL $homebrew/install/master/install)"
    exec ${SHELL}
fi
