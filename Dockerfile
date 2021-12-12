# Container image that runs your code
FROM alpine:3.10

# Install packages
RUN apk add --no-cache \
    # To parse and use the return value of curl
    jq

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]