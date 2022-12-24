#!/usr/bin/env bash

set -eu

rm -rf src
mkdir src
git clone https://github.com/ops-class/os161.git src

pushd src && ./configure && bmake && popd
