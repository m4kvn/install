#!/bin/sh

brew install zsh
zsh=$(which zsh)
sudo echo $zsh >> /etc/shells
chsh -s $zsh
