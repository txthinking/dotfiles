#!/bin/bash

cp dnsmasq.conf /etc/dnsmasq.conf
rm -rf /etc/dnsmasq.d
cp -r dnsmasq.d /etc/

echo "You may like use https://github.com/txthinking/google-hosts to generate google config"
