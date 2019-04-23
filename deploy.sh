#!/usr/bin/env bash

echo "This is deploy script"

echo $1

unzip -o $1
ls $1

cp $1/index.js /home/ec2-user/nodejs/sample-app/
sudo /bin/systemctl restart node_app.service