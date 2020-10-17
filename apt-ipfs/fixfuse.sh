#!/bin/bash

sudo sed -i "s/#user_allow_other/user_allow_other/" /etc/fuse.conf
sed -i 's/"FuseAllowOther": false/"FuseAllowOther": true/' ~/.ipfs/config
