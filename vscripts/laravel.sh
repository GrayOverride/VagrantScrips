#!/bin/bash
##install dependencys
sudo apt-get install -y php5-cli apache2 php5-mcrypt curl git
curl -sS https://getcomposer.org/installer | php 
sudo mv composer.phar /usr/local/bin/composer
cd /vagrant/ && git clone https://github.com/PhantomOverride/mkweb.git
sudo php5enmod mcrypt
cd mkweb && composer install

