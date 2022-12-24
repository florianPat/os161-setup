#!/usr/bin/env bash

set -eu

echo "Setting up .env..."

USER_ID=`id -u`
GROUP_ID=`id -g`
echo "USER_ID=${USER_ID}" > .env
echo "GROUP_ID=${GROUP_ID}" >> .env

echo "Build dev environment"
docker --version
docker compose version
docker compose up --build

echo "Configuring for DUMPVM..."
bin/kern-conf DUMBVM
bin/bmake-depend DUMBVM
bin/bmake DUMBVM
bin/bmake-userspace

pushd root && wget https://ops-class.org/files/sys161.conf && popd

echo "Finished preparing dev environment and compiling kernel! Run it with bin/sys161"
