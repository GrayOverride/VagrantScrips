# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.provision :shell, :path => "vscrips/ruby.sh"
  config.vm.provision :shell, :path => "vscripts/apache2.sh"
  config.vm.provision :shell, :path => "vscrips/git.sh"
  config.vm.network :forwarded_port, host: 4567, guest: 80
end
