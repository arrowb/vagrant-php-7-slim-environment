#!/usr/bin/env bash

echo "======================================================="
echo "PHP INSTALL"
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
apt-get install -y php7.1-fpm php7.1 php7.1-curl php7.1-cli php7.1-gd php7.1-mysql php7.1-gettex
echo "======================================================="
