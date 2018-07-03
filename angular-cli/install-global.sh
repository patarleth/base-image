#!/bin/bash

cd /root
ng new silly
cd /root/silly
npmPackages=($(jq -r '.dependencies | keys[] as $k | "\($k)@\(.[$k])"' /root/silly/package.json ))
npm install "${npmPackages[@]}" -g
rm -rf /root/silly
