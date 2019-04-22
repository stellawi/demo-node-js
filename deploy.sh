#!/usr/bin/env bash

echo "This is deploy script"
unzip -o Archive.zip

cp Archive/index.js /home/ec2-user/nodejs/sample-app/
sudo /bin/systemctl restart node_app.service