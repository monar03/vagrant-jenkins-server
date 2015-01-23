# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu"
  config.vm.provider "virtualbox" do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "10240", "--cpus", "4", "--ioapic", "on"]
  end

  config.vm.provision :chef-solo do |chef|
    chef.cookbooks_path = "chef-jenkins-server/site-cookbooks/"
    chef.run_list = %w[
      recipe[jenkins]
    ]
  end  
end
