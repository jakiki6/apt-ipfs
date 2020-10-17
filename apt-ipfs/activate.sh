#!/bin/bash

./update.sh | sudo tee /etc/apt/sources.list.d/apt-ipfs-$(./update.sh | cut -d " " -f3 | cut -d "/" -f3 | tr -d "\n").list
