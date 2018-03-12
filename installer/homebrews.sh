#!/bin/sh

dir=$(cd $(dirname $0) && pwd)
find $dir/homebrew -type f | \
xargs -I{} sh {}
