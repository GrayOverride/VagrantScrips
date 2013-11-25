#!/usr/bin/env bash
#rvm
apt-get install -y curl
\curl -L https://get.rvm.io | bash
source /etc/profile
#uncomment to install a specific rubyversion a launch, 1.9.3-p125 is an example
#rvm install ruby-1.9.3-p125
#passenger
sudo apt-get install -y expect
sudo apt-get install -y libcurl4-openssl-dev 
sudo apt-get install -y apache2-threaded-dev 
sudo apt-get install -y libapr1-dev 
sudo apt-get install -y libaprutil1-dev 
sudo gem install passenger
rvmsudo passenger-install-apache2-module
expect "Press Enter to continue, or Ctrl-C to abort."
send '\n'
expect "Press ENTER to continue."
send '\n'
sudo apt-get remove -y expect
sudo sed -i '$a LoadModule passenger_module /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25/buildout/apache2/mod_passenger.so' /etc/apache2/apache2.conf
sudo sed -i '$a 	PassengerRoot /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25' /etc/apache2/apache2.conf
sudo sed -i '$a 	PassengerDefaultRuby /usr/local/rvm/wrappers/ruby-1.9.3-p125/ruby' /etc/apache2/apache2.conf
echo"to install a specific rubyversion run 'rvm install ruby-version' or for the latest and greatest 'rvm install ruby'"
