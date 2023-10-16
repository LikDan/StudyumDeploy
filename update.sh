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

echo "Waiting for 15 seconds"
sleep 15
docker compose logs
