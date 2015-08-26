INSTALL_GIT=assets/install-git.sh
INSTALL_DOCKER=assets/install-docker.sh
INSTALL_DOCKER_COMPOSE=assets/install-docker-compose.sh
INSTALL_DOCKERONY=assets/install-dockerony.sh
INSTALL_DOCKERSHELL=assets/install-dockershell.sh
CONFIGURE_DNSMASQ=assets/configure-dnsmasq.sh

all: install-git \
	install-docker \
	install-docker-compose \
	install-dockerony \
	install-dockershell \
	configure-dnsmasq

install-git:
	$(INSTALL_GIT)

install-docker:
	$(INSTALL_DOCKER)

install-docker-compose:
	$(INSTALL_DOCKER_COMPOSE)

install-dockerony:
	$(INSTALL_DOCKERONY)

install-dockershell:
	$(INSTALL_DOCKERSHELL)

configure-dnsmasq:
	$(CONFIGURE_DNSMASQ)
