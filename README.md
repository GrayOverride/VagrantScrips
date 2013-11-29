VagrantScrips
=============

Vagrant Setup and workspace for ubuntu VM

<h2>Installation</h2>
Install Vagrant and Virtualbox(or VMWare) (http://www.vagrantup.com/) with your choice of VM <br>
"vagrant init precise32 http://files.vagrantup.com/precise32.box" <br>
"jump to projekt direktory and run "git clone https://github.com/GrayOverride/VagrantScrips.git"<br>
"vagrant up" and you are done"<br>

<h2>If you add all of the provided you will end up with a devmachine that runs:</h2> <br>

Apache2 <br>
RVM (installing Ruby is optional) <br>
git <br>
PhusionPassenger <br>
Mongodb-10gen <br>
Mysql (user Root, pass massekaffe)<br>

After the installation is done you'll want to install your choice of Ruby&Rails by doing a Vagrant ssh and running: <br>
RVM install ruby-1.x.x <br>
Gem install Rails <br>

If you dont want to do a clean install of all scripts you can include any one of them to an existing vagrant directory and run vagrant reload --provision
