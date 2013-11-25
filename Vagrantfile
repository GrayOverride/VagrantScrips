# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.provision :shell, :path => "ruby.sh"
  config.vm.provision :shell, :path => "apache2.sh"
  config.vm.provision :shell, :path => "git.sh"
end
