#!/bin/sh

brew install zsh

printf "[install] Would you like zsh to be the login shell? [y]"
while read setLoginShell; do
    case "$setLoginShell" in
        "y" | "Y") break ;;
        *) exit 0 ;;
    esac
done

chsh -s /usr/local/bin/zsh

printf "[install] Would you like to install zplug? [y]"
while read installZplug; do
    case "$installZplug" in
        "y" | "Y") break ;;
        *) exit 0 ;;
    esac
done

curl -sL https://github.com/m4kvn/install/raw/master/installer/homebrew/zplug.sh
