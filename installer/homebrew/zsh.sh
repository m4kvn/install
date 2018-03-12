#!/bin/sh

brew install zsh
zsh=$(which zsh)
echo $zsh | sudo tee -a /etc/shells
chsh -s $zsh
