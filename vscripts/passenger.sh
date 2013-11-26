#!/usr/bin/expect -f
spawn "./passenger-depends.sh"
expect "Press Enter to continue, or Ctrl-C to abort."
send '\n'
expect "Press ENTER to continue."
send '\n'
sudo sed -i '$a LoadModule passenger_module /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25/buildout/apache2/mod_passenger.so' /etc/apache2/apache2.conf
sudo sed -i '$a         PassengerRoot /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25' /etc/apache2/apache2.conf
sudo sed -i '$a         PassengerDefaultRuby /usr/local/rvm/wrappers/ruby-1.9.3-p125/ruby' /etc/apache2/apache2.conf
interact
