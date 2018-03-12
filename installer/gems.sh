#!/bin/sh

if [ -n "$(gem --version 2>/dev/null)" ]; then
    dir=$(cd $(dirname $0) && pwd)
    find $dir/gems -type f | \
    xargs -I{} sh {}
fi
