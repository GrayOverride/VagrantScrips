VagrantScrips
=============

Vagrant Setup and workspace

Before you use these you'll need to have Vagrant Installed (http://www.vagrantup.com/) with your choice of VM

If you add all of the provided you will end up with a devmachine that runs: <br>

Apache2 <br>
RVM (installing Ruby is optional) <br>
git <br>
PhusionPassenger <br>

After the installation is done you'll want to install your choice of Ruby&Rails by doing a Vagrant ssh and running 
RVM install ruby-1.x.x
Gem install Rails

If you dont want to do a clean install of all scripts you can include any one of them to an existing vagrant directory and run vagrant reload --provision
