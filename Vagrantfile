# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Create node1
  N = 3
  (1..N).each do |machine_id|
  config.vm.define "node#{machine_id}" do |app_config|
      app_config.vm.box = "centos/7"
      app_config.vm.hostname = "node#{machine_id}"
      app_config.vm.network :private_network, ip: "192.168.10.1#{machine_id}"
      app_config.vm.provider "virtualbox" do |vb|
          vb.memory = "2048"
      end
      app_config.vm.provision "shell", path: "server_setup.sh"
      # Launching ansible playbook after all VMs are up and running
      if machine_id == N
        app_config.vm.provision :ansible do |ansible|
          ansible.limit = "all"
          #ansible.inventory_path = "./inventories"
          ansible.playbook = "redis-setup.yml"
        end
      end
    end
  end
end
