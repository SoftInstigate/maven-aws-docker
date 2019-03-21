#!/bin/bash
set -e

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
    docker push softinstigate/maven-aws:latest;
    docker push softinstigate/maven-aws:"$RELEASE";
fi