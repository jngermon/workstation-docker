#!/bin/bash

echo "Installation of docker"

if [ $(which docker) ]; then
	echo "Docker is already installed"
	exit
fi

if ! [ $(which curl) ]; then
	echo "Curl is not install"
	sudo apt-get update
	sudo apt-get install curl
fi

curl -sSL https://get.docker.com/ | sh

sudo systemctl enable docker