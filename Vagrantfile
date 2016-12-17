# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "saltmaster" do |saltmaster|
    saltmaster.vm.box = "ubuntu/trusty64"
    saltmaster.vm.hostname = "saltmaster.test"
    saltmaster.vm.network "private_network", ip: "192.168.101.10"
    saltmaster.vm.provision "shell" do |s|
      s.path = "bootstrap-salt.sh"
      s.args = ["-M", "-A", "127.0.0.1", "stable", "2016.3.4"]
    end
end
