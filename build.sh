#!/usr/bin/env bash

git clone git://git.ipfire.org/ipfire-2.x.git
cd ipfire-2.x
git checkout -b next -t origin/next
./make.sh downloadsrc
./make.sh gettoolchain
./make.sh build
