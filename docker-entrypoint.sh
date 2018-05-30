#!/bin/sh

echo "Starting SSH tunnel..."

ls -la /tmp
cat /tmp/keyfile.pem

cd /tmp

ssh -v -oStrictHostKeyChecking=no ubuntu@ngi.geocat.net -i /tmp/keyfile.pem -CNL localhost:5432:postgisdatabase.cncvnpkxtdwx.eu-central-1.rds.amazonaws.com:5432

echo "Done..."

while true; do sleep 1000; done;