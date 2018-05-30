#!/bin/sh

NAME=rasdaman1
BASTION=ec2-52-28-11-7.eu-central-1.compute.amazonaws.com
SSHKEY=ngi-poc-vendor-c-ssh-key.pem
LOCALPORT=50002
REMOTEHOST=ip-10-0-1-76.eu-central-1.compute.internal
REMOTEPORT=8080
VERBOSE=

cd /tmp/keys

echo "Starting SSH tunnel..."
ssh $VERBOSE -oStrictHostKeyChecking=no ubuntu@"$BASTION" -i $SSHKEY -CNL *:"$LOCALPORT":"$REMOTEHOST":"$REMOTEPORT"
echo "Done..."
