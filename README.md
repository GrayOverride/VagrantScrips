VagrantScrips
=============

Vagrant Setup and workspace for ubuntu VM

Before you use these you'll need to have Vagrant Installed (http://www.vagrantup.com/) with your choice of VM <br>
i used the example machine that can be obtained by running "vagrant init precise32 http://files.vagrantup.com/precise32.box" <br>

If you add all of the provided you will end up with a devmachine that runs: <br>

Apache2 <br>
RVM (installing Ruby is optional) <br>
git <br>
PhusionPassenger <br>
Mongodb-10gen <br>

After the installation is done you'll want to install your choice of Ruby&Rails by doing a Vagrant ssh and running: <br>
RVM install ruby-1.x.x <br>
Gem install Rails <br>

If you dont want to do a clean install of all scripts you can include any one of them to an existing vagrant directory and run vagrant reload --provision
