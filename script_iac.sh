#!/bin/bash

echo "Updating packages"

apt-get update -y
apt-get upgrade -y

apt-get install apache2 -y

echo "Apache has been installed"

apt-get install unzip -y

echo "Unzip has been installed"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R ./* /var/www/html/

echo "Deployment completed"
