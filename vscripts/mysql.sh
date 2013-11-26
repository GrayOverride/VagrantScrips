#!/bin/bash
echo mysql-server mysql-server/root_password password massekaffe | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password massekaffe | sudo debconf-set-selections

sudo apt-get update -y
sudo apt-get install -y mysql-server


