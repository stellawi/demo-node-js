#!/usr/bin/env bash

echo "This is deploy script"

echo $1

unzip -o $1
ls Archive/

cp Archive/index.js /home/ec2-user/nodejs/sample-app/
sudo /bin/systemctl restart node_app.service