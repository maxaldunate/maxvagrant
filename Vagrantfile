# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "precise64"
  #config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  #config.ssh.username = 'root'
  #config.ssh.password = 'vagrant'
  #config.ssh.insert_key = 'true'

  # Setup for ppupet agent centos6 from puppetslabs
  config.vm.define "ppupet.agent.centos6" do |pa1|
    pa1.vm.hostname = "ppupet.agent.centos6"
    pa1.vm.box = "puppetlabs/centos-6.6-64-puppet"
    pa1.vm.box_version = "1.0.1"
    pa1.vm.network "private_network", type: "dhcp"
    pa1.vm.synced_folder "sharedfolder", "/media/sharedfolder"

    pa1.vm.provision "puppet" do |puppet|
      #puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      #puppet.options = ['--verbose']

      #puppet.environment_path = "environments"
      #puppet.environment = "testenv"

      #puppet.manifests_path = "manifests"
      #puppet.manifest_file = "ppagCentos6.pp"
    end

  end

#  #setup for ppupet agent ubuntu from ubuntu/precise64 - Official Ubuntu Server 12.04
#  config.vm.define "ppagUbPrecise64" do |pa2|
#    pa2.vm.hostname = "ppagUbPrecise64"
#    pa2.vm.box = "precise64"
#    pa2.vm.network "private_network", type: "dhcp"
#    pa2.vm.network "public_network", ip: "192.168.242.302"
#    pa2.vm.synced_folder "sharedfolder", "/media/sharedfolder"
#  end
   
#  #setup for ppupet agent centos7 from centos/7 - CentOS Linux 7 / x86_64 
#  config.vm.define "ppagCentos7" do |pa3|
#    pa3.vm.hostname = "ppagCentos7"
#    pa3.vm.box = "centos/7"
#    pa3.vm.network "private_network", type: "dhcp"
#	pa3.vm.network "public_network", ip: "192.168.242.303"
#	pa3.vm.synced_folder "sharedfolder", "/media/sharedfolder"
#  end
   
end


  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box_url = "puppetlabs/centos-6.6-64-puppet"
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

