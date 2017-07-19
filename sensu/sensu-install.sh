#!/bin/bash

# Start docker machine
../docker/machine.sh sensu

# eval to environment
docker-machine env sensu

eval $(docker-machine env sensu)

# Docker compose
docker-compose up -d

# install dependensies in client
docker exec -it client apt update
docker exec -it client apt install -y build-essential
docker exec -it client sensu-install -p http

# Copy checks to server
for i in $(ls ./checks)
  do
    docker cp ./checks/$i server:etc/sensu/check.d/
done

# Restart server

echo "server restarted"

docker restart server
