#!/bin/bash

cp server.conf /etc/openvpn/
echo "TODO: edit /etc/openvpn/server.conf last line push route to the local route(like eth0)"
cp client0.conf /etc/openvpn/
echo "TODO: edit /etc/openvpn/client0.conf last line remote server"
