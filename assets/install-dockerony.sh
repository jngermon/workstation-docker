#!/bin/bash

echo "Installation of dockerony"

mkdir -p vendor

cd vendor

if [ -d dockerony ]; then
	echo "Dockerony is already installed"
else
	git clone git@github.com:greg0ire/dockerony.git
fi

cd ..

mkdir --parents ~/bin

ln --symbolic --force $(pwd)/vendor/dockerony/bin/* ~/bin/.
