# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "sensu-lxc-host"
  config.vm.box = "hw-ubuntu-12.10"
  config.vm.box_url = "https://vagrant.hw-ops.com/quantal64.box"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "./cookbooks"
    chef.roles_path = "./roles"
    chef.data_bags_path = "./data_bags"
    chef.add_recipe "sensu_lxc"
    #chef.json = { :ruby_installer => { :method => "source"} }
  end
end
