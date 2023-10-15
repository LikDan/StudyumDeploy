#!/bin/sh

if [ -n "$1" ]; then
    (cd ./sources/"$1" && ./pull.sh)
else
    (cd ./sources/frontend && ./pull.sh)
    (cd ./sources/backend && ./pull.sh)
fi

cd app/deploy || exit

docker compose down
docker compose up -d

if [ -n "$2" ]; then
    docker compose logs -f
else
    docker compose logs
fi