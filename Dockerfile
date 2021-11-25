# Container image that runs your code
FROM quay.io/centos/centos:stream9

# Copies your code file from your action repository to the filesystem path `/` of the container
RUN yum update -y \
    && yum install python3 -y \
    && yum install file -y

COPY LICENSE /LICENSE
COPY src /src
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

CMD ["."]
