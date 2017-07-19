#!/bin/bash

# Variables

CPUS=4
RAM=4096

docker-machine create -d virtualbox --virtualbox-cpu-count "${CPUS}" --virtualbox-memory "${RAM}" $1	