#!/bin/bash

echo "Updating system"
apt-get update
apt-get upgrade -y

echo "Installing apache2"
apt-get install apache2 -y

echo "Installing unzip"
apt-get install unzip -y

echo "Downloading application"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Moving application to apache server folder"

cp -R * /var/www/html/
