#!/bin/sh

if [ -z "$1" ]
  then
    echo "Must supply a client name"
else
    docker exec -it ovpn easyrsa build-client-full $1 nopass
fi
