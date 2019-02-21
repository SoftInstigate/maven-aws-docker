#!/bin/bash
set -e

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    docker login -u="$DOCKER_USER" -p="$DOCKER_PASS";
    docker push softinstigate/maven-aws:latest;
    docker push softinstigate/maven-aws:"$ECS_CLI_RELEASE";
fi