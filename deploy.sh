#!/usr/bin/env sh

set -ex

cd ~/apps/retro-tool-docker
git pull
docker-compose pull
docker-compose up -d
docker-compose exec -T api sh entrypoint.sh migrate
