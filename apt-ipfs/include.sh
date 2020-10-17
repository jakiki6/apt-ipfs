#!/bin/bash

if [ -z "$1" ]; then
	echo Please specify a package!
	exit 1
fi

cd packages

apt download $1 

for i in $(apt-cache depends $1 | grep -E 'Depends|Recommends|Suggests' | cut -d ':' -f 2,3 | sed -e s/'<'/''/ -e s/'>'/''/); do
	apt download $i
done
