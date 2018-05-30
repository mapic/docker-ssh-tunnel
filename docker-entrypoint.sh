#!/bin/sh
echo "Starting SSH tunnel..."
ssh -oStrictHostKeyChecking=no ubuntu@ngi.geocat.net -i ngi-poc-vendor-b-ssh-key.pem -CNL *:50001:postgisdatabase.cncvnpkxtdwx.eu-central-1.rds.amazonaws.com:5432
echo "Done..."
