#!/bin/bash

################## Install Docker Machine #################################

echo '################## Installing Docker Machine'

curl -L https://github.com/docker/machine/releases/download/v0.12.1/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine \
&& chmod +x /tmp/docker-machine \
&& sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

echo '################## Docker Machine installed!'


COMPOSE_VERSION=1.14.0

################## Install Docker Compose #################################

echo "##################Installing Docker Compose v${COMPOSE_VERSION} ..."

curl -L https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /tmp/docker-compose \
&& chmod +x /tmp/docker-compose \
&& sudo cp /tmp/docker-compose /usr/local/bin/docker-compose

echo '################## Docker Compose installed!'


