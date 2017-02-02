#!/bin/bash

set -e

echo "Run the RWD Docker container."

if [ -z "$RWD_DATA" ]; then
    echo "Environment variable RWD_DATA not defined."
    exit 1
fi

set -x

docker-compose run \
    --rm \
    -e RWD_DATA=$RWD_DATA \
    --entrypoint /bin/bash \
    app
