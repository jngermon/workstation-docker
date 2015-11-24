#!/bin/bash

echo "Installation of docker"

if [ $(which docker) ]; then
	echo "Docker is already installed"
	exit
fi

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo cp assets/docker.list /etc/apt/sources.list.d/docker.list

sudo vim /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get purge lxc-docker*

sudo apt-get install linux-image-extra-$(uname -r)

sudo apt-get install docker-engine

sudo systemctl enable docker
