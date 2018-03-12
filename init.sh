#!/bin/sh -eu

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

curl -sL https://github.com/m4kvn/install/raw/master/setup.sh | sh

dir=$HOME/.install

sh $dir/installer/applications.sh
sh $dir/installer/homebrews.sh
sh $dir/installer/etc.sh
sh $dir/installer/gems.sh
