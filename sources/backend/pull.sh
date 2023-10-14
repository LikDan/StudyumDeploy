#!/bin/sh

git -C repository pull

cd repository
if [ -n "$1" ]; then
    docker build -t backend:latest -t backend:$1 -f deploy/Dockerfile .
else
    docker build -t backend:latest -f deploy/Dockerfile .
fi
