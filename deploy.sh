#!/usr/bin/env sh

set -ex

CWD=$(cd $(dirname "$0");pwd)
cd $CWD
git pull
docker-compose pull
docker-compose up -d
docker-compose exec -T api sh entrypoint.sh migrate
