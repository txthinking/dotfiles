#!/bin/bash

rm -rf ~/.tor
cp -r .tor ~

echo "You should change user and update bridges"
echo "Run: sudo tor -f ~/.tor/torrc"
