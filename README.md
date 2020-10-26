# Maven + AWS cli + ECS cli

[![Build Status](https://travis-ci.org/SoftInstigate/maven-aws-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/maven-aws-docker)

A Docker image for Apache Maven with [AWS Command Line Interface](https://aws.amazon.com/cli/) and [Amazon ECS command line interface](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli.html) tools.

This image has been used to build Java projects and to push them to AWS ECS containers. It can be useful especially for CI and CD systems.

## Run ##

The default ENTRYPOINT for this image is `mvn`.

If you want to `mvn clean install` your Java project, CD where the pom.xml is located, then:

```bash
$ docker pull softinstigate/maven-aws
$ docker run -it --rm \
    -v "$PWD":/usr/src/app  \
    -v "$HOME"/.m2:/root/.m2 \
    -w /usr/src/app \
    softinstigate/maven-aws \
    clean install
```

> The `-v "$HOME"/.m2:/root/.m2` parameter mounts your local `~/.m2` Maven repository as a Docker volume.

### Run aws ###

```bash
docker run -it --rm --entrypoint "aws" softinstigate/maven-aws
```

### Run ecs-cli ###

```bash
docker run -it --rm --entrypoint "ecs-cli" softinstigate/maven-aws
```

### Check the installed versions

To chekl the version of each installed tool, you can run the `startup.sh` script:

```bash
docker run -it --rm --entrypoint="./startup.sh" softinstigate/maven-aws

=================================================
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /usr/share/maven
Java version: 11.0.9, vendor: Oracle Corporation, runtime: /usr/local/openjdk-11
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "4.19.76-linuxkit", arch: "amd64", family: "unix"
aws-cli/2.0.59 Python/3.7.3 Linux/4.19.76-linuxkit exe/x86_64.debian.10
ecs-cli version 1.20.0 (7547c45)
=================================================
```

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
