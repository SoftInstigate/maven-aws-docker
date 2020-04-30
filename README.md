# maven-aws-docker

[![Build Status](https://travis-ci.org/SoftInstigate/maven-aws-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/maven-aws-docker)

A docker image for Maven with AWS and ECS CLI tools.

This image has been used to build Java projects and to push them to AWS ECS containers. It can be useful especially for CI and CD systems.

## Example ##

If you want to `mvn clean install` your Java project, CD where the pom.xml is located, then:

```bash
$ docker pull softinstigate/maven-aws
$ docker run -it --rm -v "$PWD":/usr/src/app  -v "$HOME"/.m2:/root/.m2 -w /usr/src/app softinstigate/maven-aws clean install
```

> The `-v "$HOME"/.m2:/root/.m2` parameter mounts your local `~/.m2` Maven repository as a Docker volume.

## Base image ##

[maven](https://hub.docker.com/r/library/maven/)

## Additional packages ##

 - python-pip
 - python-yaml
 - python-dev
 - groff
 - [aws-cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
 - [ecs-cli](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html)

See: https://hub.docker.com/r/softinstigate/maven-aws/
