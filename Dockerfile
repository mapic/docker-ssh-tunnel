FROM alpine:3.2
MAINTAINER knutole@mapic.io

EXPOSE 5432
EXPOSE 22
EXPOSE 55432

# update ssh client
RUN apk add --update openssh-client && rm -rf /var/cache/apk/*
# CMD rm -rf /root/.ssh && mkdir /root/.ssh 
# CMD cp -R /root/ssh/* /root/.ssh/ 
# CMD chmod -R 600 /root/.ssh/*

ADD ./keyfile.pem /tmp/keyfile.pem
ADD ./docker-entrypoint.sh /tmp/docker-entrypoint.sh
# start tunnel
# CMD ssh \
# -vv \
# -o StrictHostKeyChecking=no \
# -N $TUNNEL_HOST \
# -L *:$LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT 

RUN ls -la /tmp

CMD sh /tmp/docker-entrypoint.sh
