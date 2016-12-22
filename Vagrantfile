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

  config.vm.define "loadbalancer" do |loadbalancer|
    loadbalancer.vm.box = "ubuntu/trusty64"
    loadbalancer.vm.hostname = "lb01
    loadbalancer.vm.network "private_network", ip: "192.168.101.40"
    loadbalancer.vm.provision "shell" do |s|
      s.path = "bootstrap-salt.sh"
      s.args = ["-A", "192.168.101.10", "stable", "2016.3.4"]
    end
  end
  config.vm.define "client01" do |client01|
    client01.vm.box = "mwrock/Windows2012R2"
    client01.vm.hostname = "client01"
    client01.vm.network "private_network", ip: "192.168.101.30"
      client01.vm.provision "shell" do |s|
        s.path = "bootstrap-salt.ps1"
        s.args = ["-version", "2016.3.4", "-master", "192.168.101.10"]
      end
    end

  config.vm.define "web01" do |web01|
    web01.vm.box = "mwrock/Windows2012R2"
    web01.vm.hostname = "web01"
    web01.vm.network "private_network", ip: "192.168.101.21"
      web01.vm.provision "shell" do |s|
        s.path = "bootstrap-salt.ps1"
        s.args = ["-version", "2016.3.4", "-master", "192.168.101.10"]
      end
    end
  config.vm.define "web02" do |web02|
    web02.vm.box = "mwrock/Windows2012R2"
    web02.vm.hostname = "web02"
    web02.vm.network "private_network", ip: "192.168.101.22"
      web02.vm.provision "shell" do |s|
        s.path = "bootstrap-salt.ps1"
        s.args = ["-version", "2016.3.4", "-master", "192.168.101.10"]
      end
    end

end
