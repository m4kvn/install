#!/bin/bash

if ! [[ $(xcode-select -p 2>/dev/null) ]]; then
    echo "Installing xcode-select"
    xcode-select --install
else
    echo "xcode-select is already installed."
fi