# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :forwarded_port, guest: 3000, host: 3000, host_ip: "127.0.0.1"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.synced_folder "./app/", "/host", nfs: true
  config.vm.provision :shell, :path => "sh/provision.sh"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
end