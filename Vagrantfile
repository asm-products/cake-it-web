Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty32"
  config.vm.provision :shell, path: "vagrant/provision.sh", privileged: false
  config.vm.network :forwarded_port, host: 4567, guest: 3000
  config.vm.boot_timeout = 900
  config.vm.provider :virtualbox do |vb|
    vb.gui = true
  end
end
