# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :master, primary: true do |master_config|
    master_config.vm.box = "ubuntu/focal64"
    master_config.vm.network "private_network", ip: "192.168.56.10"

    # Install Salt Master & Minion
    master_config.vm.provision :salt do |salt|
      salt.install_type = "stable"
      salt.version = "3005.1"
      salt.install_master = true
      salt.run_highstate = false

      salt.master_config = 'saltstack/etc/master'
      salt.minion_config = 'saltstack/etc/minions/master'
    end
  end

  config.vm.define :db do |config|
    config.vm.box = "ubuntu/focal64"
    #config.vm.hostname = "db.example.com"
    config.vm.network "private_network", ip: "192.168.56.11"

    # Install Salt Minion
    config.vm.provision :salt do |salt|
      salt.install_type = "stable"
      salt.version = "3005.1"
      salt.run_highstate = false
      salt.minion_config = 'saltstack/etc/minions/db'
   end
  end

  config.vm.define :api do |config|
    config.vm.box = "ubuntu/focal64"
    #config.vm.hostname = "api.example.com"
    config.vm.network "private_network", ip: "192.168.56.12"
    config.vm.network "forwarded_port", guest: 8000, host: 8000

    # Install Salt Minion
    config.vm.provision :salt do |salt|
      salt.install_type = "stable"
      salt.version = "3005.1"
      salt.run_highstate = false
      salt.minion_config = 'saltstack/etc/minions/api'
    end
  end
end
