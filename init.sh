#!/bin/sh -eu

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

curl -sL https://github.com/m4kvn/install/raw/master/setup.sh | sh -eu

dir=$HOME/.install

sh -eu $dir/installer/application.sh
sh -eu $dir/installer/homebrews.sh
sh -eu $dir/installer/zplug.sh
