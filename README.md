# maven-aws-docker

[![Build Status](https://travis-ci.org/SoftInstigate/maven-aws-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/maven-aws-docker)

A docker image for Maven with AWS and ECS CLI tools

This image has been used to build Java projects and to push them to AWS ECS containers. It can be useful especially for CI and CD systems.

## Base image ##

[maven:3.5](https://hub.docker.com/r/library/maven/)

## Additional packages ##

* [aws-cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
* [ecs-cli](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html)

See: https://hub.docker.com/r/softinstigate/maven-aws/
