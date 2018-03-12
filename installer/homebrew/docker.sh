#!/bin/sh

if [ ! $(brew list | grep -w docker) ]; then
    brew install docker
fi
