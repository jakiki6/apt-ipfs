#!/bin/bash

cd packages
apt-ftparchive packages . > Packages
apt-ftparchive release . > Release
#apt-ftparchive contents . > Contents
#apt-ftparchive sources . > Sources
cd ..

export HASH=$(ipfs add . -r 2> /dev/null | tail -n1 | cut -d " " -f2 | tr -d '\n')

echo deb [trusted=yes] file:/ipfs/$HASH/packages ./
