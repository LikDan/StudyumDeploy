#!/bin/sh

git -C repository pull

cd repository
if [ -n "$1" ]; then
    docker build -t frontend:latest -t backend:$1 -f deploy/Dockerfile .
else
    docker build -t frontend:latest -f deploy/Dockerfile .
fi