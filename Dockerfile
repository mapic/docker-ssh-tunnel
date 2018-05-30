FROM alpine:3.2

MAINTAINER knutole@mapic.io

EXPOSE 50001

# update ssh client
RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

# install debug tools
RUN apk add --no-cache nmap

# add keyfiles
# RUN mkdir /tmp/keys
# ADD ./keys /tmp/keys
ADD ./docker-entrypoint.sh /tmp/docker-entrypoint.sh

CMD sh /tmp/docker-entrypoint.sh