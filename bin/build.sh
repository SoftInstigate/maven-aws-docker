#!/bin/bash
set -e

if [[ -z $ECS_CLI_RELEASE ]]; then
    echo "Error: undefined ECS_CLI_RELEASE environment variable."
    exit 1
fi
docker build --build-arg ECS_CLI_RELEASE="$ECS_CLI_RELEASE" -t softinstigate/maven-aws .
docker tag softinstigate/maven-aws:latest softinstigate/maven-aws:"$ECS_CLI_RELEASE"