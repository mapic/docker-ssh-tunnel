#!/bin/sh

NAME=rasdaman2
BASTION=ec2-52-28-11-7.eu-central-1.compute.amazonaws.com
SSHKEY=ngi-poc-vendor-c-ssh-key.pem
LOCALPORT=50003
REMOTEHOST=ip-10-0-2-208.eu-central-1.compute.internal
REMOTEPORT=8080
VERBOSE=

cd /tmp/keys

echo "Starting SSH tunnel..."
ssh $VERBOSE -oStrictHostKeyChecking=no ubuntu@"$BASTION" -i $SSHKEY -CNL *:"$LOCALPORT":"$REMOTEHOST":"$REMOTEPORT"
echo "Done..."
