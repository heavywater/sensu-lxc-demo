Vagrant.configure('2') do |config|
  config.vm.hostname = 'sensu-lxc-host'
  config.vm.box = 'dje-raring'
  config.vm.box_url = 'http://hw-vagrant.s3.amazonaws.com/dje-raring.vmware.box'
  config.vm.synced_folder '.', '/vagrant', id: 'vagrant-root', disabled: true
  config.vm.provision :shell do |shell|
    shell.inline = 'apt-get update; apt-get install -y -q ruby-full git; gem install --no-ri --no-rdoc bundler'
  end

  config.vm.provider :vmware_fusion do |v|
    v.vmx['numvcpus'] = '4'
    v.vmx['memsize'] = '1024'
  end
end
