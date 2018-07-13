FROM maven:3-jdk-8

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

RUN apt-get update && apt-get -y install python-pip python-yaml python-dev
RUN pip install awscli
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-v1.5.0
RUN chmod +x /usr/local/bin/ecs-cli
