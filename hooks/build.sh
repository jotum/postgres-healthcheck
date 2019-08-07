#!/bin/bash

TAG="jotum/postgres-healthckeck${BASE_TAG:+:${BASE_TAG}}"

set -x
docker build . \
    --no-cache \
    -t "$TAG" \
    --build-arg BASE_TAG=$BASE_TAG