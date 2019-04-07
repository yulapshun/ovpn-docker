#!/bin/sh
export $(grep -v '^#' .env | xargs -d '\n') && docker run -v $(pwd)/ovpn_data:/etc/openvpn --log-driver=none --env-file ./.env --rm kylemanna/openvpn ovpn_genconfig -u $SERVER_NAME
export $(grep -v '^#' .env | xargs -d '\n') && docker run -v $(pwd)/ovpn_data:/etc/openvpn --log-driver=none --env-file ./.env --rm -it kylemanna/openvpn ovpn_initpki
