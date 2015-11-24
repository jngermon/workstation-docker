#!/bin/bash

DOCKER_COMPOSE_VERSION_NUM="1.5.1"

if ! [ $(which curl) ]; then
	echo "Curl is not install"
	sudo apt-get update
	sudo apt-get install curl
fi

sudo curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION_NUM/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
