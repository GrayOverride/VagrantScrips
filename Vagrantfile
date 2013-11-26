# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.define :dev do |dev|
  dev.vm.box = "precise32"
  dev.vm.hostname = "dev"
  dev.vm.provision :shell, :path => "vscripts/apache2.sh"
  dev.vm.provision :shell, :path => "vscripts/ruby.sh"
  dev.vm.provision :shell, :path => "vscripts/mysql.sh"
  dev.vm.provision :shell, :path => "vscripts/passenger.sh"
  dev.vm.provision :shell, :path => "vscripts/git.sh"
  dev.vm.provision :shell, :path => "vscripts/mongo.sh"
  dev.vm.network :forwarded_port, host: 4567, guest: 80 
  
  end

end
