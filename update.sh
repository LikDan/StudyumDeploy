#!/bin/sh

if [ -n "$1" ]; then
    (cd ./sources/$1 && ./pull.sh $2)
else
    (cd ./sources/frontend && ./pull.sh)
    (cd ./sources/backend && ./pull.sh)
fi

cd app/deploy

docker compose down
docker compose build
docker compose up -d
docker compose logs -f