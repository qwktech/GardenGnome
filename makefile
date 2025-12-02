TOOLBOX_FILE := /run/.toolboxenv
PODMAN_LAUNCHER := /usr/bin/podman

ifneq ("$(wildcard $(TOOLBOX_FILE))","")
        CE := flatpak-spawn --host podman
else ifneq ("$(wildcard $(PODMAN_LAUNCHER))","")
        CE := podman
else
        CE := docker
endif


include app/app.mk db/db.mk

