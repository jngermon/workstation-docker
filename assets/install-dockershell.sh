#!/bin/bash

echo "Installation of dockershell"

mkdir -p vendor

cd vendor

if [ -d dockershell ]; then
	echo "Dockershell is already installed"
else
	git clone https://github.com/L-P/webdev-toolbox.git dockershell

	cd dockershell

    make

    cd ..
fi

cd ..

mkdir --parents ~/bin

ln --symbolic --force $(pwd)/vendor/dockershell/webdev-toolbox ~/bin/.
