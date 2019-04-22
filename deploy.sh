#!/usr/bin/env bash

echo "This is deploy script"
unzip -o Archive.zip
sudo /bin/systemctl restart node_app.service