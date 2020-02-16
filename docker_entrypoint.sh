#!/usr/bin/env bash

set -e

TARGET="target/$1 ${@:2}"

if test -n "$(find /app/target/$1 -name '*.js' -print -quit)"
then
    eslint $TARGET
else
    echo No Javascript files found.
    exit 0
fi
