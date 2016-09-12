#!/bin/bash

echo "Installation of docker"

if [ $(which docker) ]; then
	echo "Docker is already installed"
	exit
fi

curl https://get.docker.com > install-docker.sh
chmod 755 install-docker.sh
./install-docker.sh
rm install-docker.sh

sudo systemctl enable docker

sudo groupadd docker

sudo usermod -aG docker $(whoami)
