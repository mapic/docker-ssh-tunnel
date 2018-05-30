#!/bin/sh

NAME=geocat
BASTION=ngi.geocat.net
SSHKEY=ngi-poc-vendor-b-ssh-key.pem
LOCALPORT=50001
REMOTEHOST=postgisdatabase.cncvnpkxtdwx.eu-central-1.rds.amazonaws.com
REMOTEPORT=5432
VERBOSE=

cd /tmp/keys

echo "Starting SSH tunnel..."
ssh $VERBOSE -oStrictHostKeyChecking=no ubuntu@"$BASTION" -i $SSHKEY -CNL *:"$LOCALPORT":"$REMOTEHOST":"$REMOTEPORT"
echo "Done..."
