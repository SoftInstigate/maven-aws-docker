#!/bin/bash
set -e

if [[ -z $ECS_CLI_RELEASE ]]; then
    echo "Error: undefined ECS_CLI_RELEASE environment variable."
    exit 1
fi
docker build --build-arg ECS_CLI_RELEASE="$ECS_CLI_RELEASE" -t softinstigate/serverless .
docker tag softinstigate/serverless:latest softinstigate/serverless:"$ECS_CLI_RELEASE"