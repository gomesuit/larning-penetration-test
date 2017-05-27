# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'Sliim/kali-2016.2-amd64'
  config.ssh.forward_agent = true
  config.ssh.username = 'root'
  config.ssh.private_key_path = 'pentest-env'

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "3072"]
    vb.gui = true
  end

  config.vm.define :kali do |host|
    #_HOSTNAME = 'server'
    #_PRIVATE_IP_ADDRESS = '192.168.33.10'

    #host.vm.hostname = _HOSTNAME
    #host.vm.network 'private_network', ip: _PRIVATE_IP_ADDRESS
    #host.vm.network :public_network, bridge: 'en0: Wi-Fi (AirPort)'
    #host.vm.provision :shell, path: 'provision.sh', privileged: false
    host.vm.provision :shell, path: 'provision.sh'
  end
end
