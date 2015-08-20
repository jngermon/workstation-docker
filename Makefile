INSTALL_GIT=assets/install-git.sh
INSTALL_DOCKER=assets/install-docker.sh

all: install-git \
	install-docker

install-git:
	$(INSTALL_GIT)

install-docker:
	$(INSTALL_DOCKER)
