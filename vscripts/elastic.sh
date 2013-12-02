#!/bin/bash
sudo apt-get install -y python-software-properties --fix-missing
sudo apt-get update 
sudo apt-get install -y openjdk-6-jre

wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb
sudo dpkg -i elasticsearch-0.90.7.deb
sudo rm -rf elasticsearch-0.90.7.deb1