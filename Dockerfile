FROM alpine:3.2

MAINTAINER knutole@mapic.io

# update ssh client
RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

# install debug tools
RUN apk add --no-cache nmap

# add keyfiles
ADD ./tunnel-1.sh /tmp/tunnel-1.sh
ADD ./tunnel-2.sh /tmp/tunnel-2.sh
ADD ./tunnel-3.sh /tmp/tunnel-3.sh
ADD ./docker-entrypoint.sh /tmp/docker-entrypoint.sh

# entrypoint
CMD sh /tmp/docker-entrypoint.sh