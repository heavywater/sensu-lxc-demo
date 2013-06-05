# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "sensu-lxc-host"
  config.vm.box = 'precise-64-lxc-preseed'
  config.vm.box_url = 'http://vagrant.hw-ops.com/precise-64-lxc-preseed.box'
=begin
  config.vm.box = 'hw-ubuntu-12.04'
  config.vm.box_url = 'http://vagrant.hw-ops.com/precise64.box'

  config.vm.box = "hw-ubuntu-12.10"
  config.vm.box_url = "http://vagrant.hw-ops.com/quantal64.box"
=end
  config.vm.provision :shell do |shell|
    shell.inline = "apt-get update\napt-get install -y -q ruby1.9.1-full git\ngem install --no-ri --no-rdoc bundler\niptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 10.0.3.201:8080"
  end
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
