#!/bin/sh

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

github=https://github.com/m4kvn
install=$github/install/raw/master

curl -sL $install/installer/homebrew.sh | sh
curl -sL $install/installer/homebrew/git.sh | sh

dir=$HOME/.install

[ -d "$dir" ] && \
    echo "$dir is already exists" && \
    exit 1

git clone https://github.com/m4kvn/install.git $dir
