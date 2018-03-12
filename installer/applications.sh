#!/bin/sh

dir=$(cd $(dirname $0) && pwd)
find $dir/homebrew-cask -type f | \
xargs -I{} sh {}
