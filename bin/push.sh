#!/bin/bash
set -e

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    docker login -u="$DOCKER_USER" -p="$DOCKER_PASS";
    docker push softinstigate/serverless:latest;
    docker push softinstigate/serverless:"$ECS_CLI_RELEASE";
fi