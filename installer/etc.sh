#!/bin/sh

find $(cd $(dirname $0) && pwd)/etc -type -f | \
xargs -I{} sh {}
