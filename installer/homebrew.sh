#!/bin/bash

if ! [[ $(xcode-select -p 2>/dev/null) ]]; then
    echo "unable to get active developer directory."
    echo "Please execute command \"xcode-select --install\""
    exit 1
fi

if ! [[ $(brew --version 2>/dev/null) ]]; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    exec ${SHELL}
else
    echo "Homebrew is already installed."
fi
