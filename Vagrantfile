# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :master, primary: true do |master_config|
    master_config.vm.box = "ubuntu/focal64"
    master_config.vm.network "private_network", ip: "192.168.56.10"

    # Install Salt Master & Minion
    master_config.vm.provision :salt do |salt|
      salt.install_master = true
      salt.run_highstate = false

      salt.master_config = 'saltstack/etc/master'
      salt.minion_config = 'saltstack/etc/minions/master'
    end
  end

  config.vm.define :db do |minion_config|
    minion_config.vm.box = "ubuntu/focal64"
    #minion_config.vm.hostname = "db.example.com"
    minion_config.vm.network "private_network", ip: "192.168.56.11"

    # Install Salt Minion
    minion_config.vm.provision :salt do |salt|
      salt.run_highstate = false
      salt.minion_config = 'saltstack/etc/minions/db'
   end
  end

  config.vm.define :api do |minion_config|
    minion_config.vm.box = "ubuntu/focal64"
    #minion_config.vm.hostname = "api.example.com"
    minion_config.vm.network "private_network", ip: "192.168.56.12"

    # Install Salt Minion
    minion_config.vm.provision :salt do |salt|
      salt.run_highstate = false
      salt.minion_config = 'saltstack/etc/minions/api'
    end
  end
end
