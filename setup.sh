#!/bin/sh -eu

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

github=https://github.com/m4kvn
install=$github/install/raw/master

curl -sL $install/installer/homebrew.sh | sh -eu
curl -sL $install/installer/homebrew/git.sh | sh -eu

dir=$HOME/.install

if [ -d "$dir" ]; then
    cd $dir && git fetch && git pull origin master
else
    git clone https://github.com/m4kvn/install.git $dir
fi
