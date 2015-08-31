# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "monitor" do |monitor|
    monitor.vm.box = "chef/ubuntu-14.04"
    monitor.vm.hostname = "monitor"
    monitor.vm.network :forwarded_port, guest: 22, host: 2231, id: "ssh", auto_correct: true
    monitor.vm.network "private_network", ip: "192.168.11.101", virtualbox__intnet: "int1"
  end

  config.vm.define "node01" do |node01|
    node01.vm.box = "chef/ubuntu-14.04"
    node01.vm.hostname = "node01"
    node01.vm.network :forwarded_port, guest: 22, host: 2232, id: "ssh", auto_correct: true
    node01.vm.network "private_network", ip: "192.168.11.1", virtualbox__intnet: "int1"
  end

end
