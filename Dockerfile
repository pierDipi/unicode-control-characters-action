# Container image that runs your code
FROM registry.access.redhat.com/ubi9/python-39:1

COPY LICENSE /LICENSE
COPY src /src
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

CMD ["."]
