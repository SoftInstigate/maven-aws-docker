# maven-aws-docker

[![Build Status](https://travis-ci.org/SoftInstigate/maven-aws-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/maven-aws-docker)

A docker image for Maven with AWS and ECS CLI tools

This image has been used to build Java projects and to push them to AWS ECS containers. It can be useful especially for CI and CD systems.

## Base image ##

[maven:3.5](https://hub.docker.com/r/library/maven/)

## Additional packages ##

* aws-cli
* ecs-cli

See: https://hub.docker.com/r/softinstigate/maven-aws/
