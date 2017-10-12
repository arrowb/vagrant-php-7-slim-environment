#!/bin/bash

echo "======================================================="
echo "NGINX INSTALL"
sudo apt-get install -y nginx

cp -r /vagrant/sh/nginx/default /etc/nginx/sites-available/default

service nginx restart
service php7.1-fpm restart
echo "======================================================="