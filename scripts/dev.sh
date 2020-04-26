#!/usr/bin/env bash

arguments="$*"
dockerComposeArgs=""

if [[ "$arguments" == *"--build-image"* ]]; then
   dockerComposeArgs="$dockerComposeArgs --build"
fi

if [[ "$arguments" == *"--recreate-containers"* ]]; then
   dockerComposeArgs="$dockerComposeArgs --force-recreate"
fi

docker-compose up -d $dockerComposeArgs
docker-compose exec php bash
