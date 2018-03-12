#!/bin/sh

if [ -s ~/.zplug ]; then
    cd ~/.zplug && git fetch && git pull origin master
else
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi
