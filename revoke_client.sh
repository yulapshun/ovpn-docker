#!/bin/sh

if [ -z "$1" ]
  then
    echo "Must supply a client name"
else
    docker exec -it ovpn easyrsa revoke $1
    docker exec -it ovpn easyrsa gen-crl
    docker-compose stop
    docker-compose up -d
fi

