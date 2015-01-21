# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "8192"]
    vb.customize ["modifyvm", :id, "--vram", "32"]
  end

  config.vm.network :forwarded_port, guest: 50030, host: 50030, auto_correct: true
  config.vm.network :forwarded_port, guest: 50060, host: 50060, auto_correct: true
  config.vm.network :forwarded_port, guest: 50070, host: 50070, auto_correct: true
  config.vm.network :forwarded_port, guest: 50075, host: 50075, auto_correct: true
  config.vm.network :forwarded_port, guest: 2181, host: 2181, auto_correct: true
  config.vm.network :forwarded_port, guest: 8020, host: 8020, auto_correct: true
  config.vm.network :forwarded_port, guest: 8088, host: 8088, auto_correct: true
  config.vm.network :forwarded_port, guest: 8787, host: 8787, auto_correct: true
  config.vm.network :forwarded_port, guest: 9200, host: 9200, auto_correct: true
  config.vm.network :forwarded_port, guest: 9999, host: 9999, auto_correct: true


end
