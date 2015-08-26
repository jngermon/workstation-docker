#!/bin/bash

DNSMASQ_DOCKER_FILE=" /etc/NetworkManager/dnsmasq.d/docker"
DNSMASQ_DOCKER_CONFIGURATION="server=/docker/172.17.42.1"

if [ -f $DNSMASQ_DOCKER_FILE ]; then
	echo "Dnsmasq seems to be already configure to use DNSDock"
	exit
fi

sudo touch $DNSMASQ_DOCKER_FILE

echo $DNSMASQ_DOCKER_CONFIGURATION | sudo tee --append $DNSMASQ_DOCKER_FILE

printf '\033[1;31m'
echo "You have to restart your network-manager to reload Dnsmasq configuration."
echo "\"sudo service network-manager restart\""
printf '\033[0m'
