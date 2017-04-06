#!/usr/bin/env bash

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

echo "dirty-diana" > /etc/hostname
echo "127.0.0.1 dirty-diana" >> /etc/hosts
hostname dirty-diana

apt-get update

/vagrant/sh/core.sh
/vagrant/sh/vim.sh
/vagrant/sh/php.sh
/vagrant/sh/composer.sh
/vagrant/sh/slim.sh
/vagrant/sh/nginx.sh
/vagrant/sh/mysql.sh

touch /etc/vagrant-provisioned

echo "--------------------------------------------------"
echo "Your vagrant instance is running at: 192.168.33.10"
