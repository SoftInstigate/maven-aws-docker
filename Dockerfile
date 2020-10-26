FROM maven:3.6-jdk-11

LABEL maintainer="SoftInstigate <info@softinstigate.com>"

RUN apt-get update && apt-get -y install groff
RUN curl --silent --show-error --fail "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN curl --silent --show-error --fail "https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest" -o "/usr/local/bin/ecs-cli"
RUN chmod +x /usr/local/bin/ecs-cli

COPY bin/startup.sh .
RUN "./startup.sh"

ENTRYPOINT [ "mvn" ]
