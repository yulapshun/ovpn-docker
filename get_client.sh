#!/bin/sh

if [ -z "$1" ]
  then
    echo "Must supply a client name"
else
    docker exec -it ovpn ovpn_getclient $1 > $1.ovpn
fi
