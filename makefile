TOOLBOX_FILE := /run/.toolboxenv
PODMAN_LAUNCHER := /usr/bin/podman
NETWORK_NAME := network-gardengnome

ifneq ("$(wildcard $(TOOLBOX_FILE))","")
        CE := flatpak-spawn --host podman
else ifneq ("$(wildcard $(PODMAN_LAUNCHER))","")
        CE := podman
else
        CE := docker
endif


include app/app.mk db/db.mk

pod:
	${CE} pod create pod-gardengnome

network:
	${CE}  network create \
          -d bridge \
          --ip-range 10.99.0.0/24 \
          --subnet 10.99.0.0/16 \
          ${NETWORK_NAME}
