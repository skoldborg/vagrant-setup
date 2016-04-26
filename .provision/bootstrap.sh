#!/usr/bin/env bash

# nginx
sudo apt-get update
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant
ln -s /vagrant /var/www

# Build essentials
apt-get install make -y
apt-get install build-essential -y
apt-get install openssl -y
apt-get install libssl-dev -y 
apt-get install pkg-config -y

# Install Node v4.x LTS
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install mongodb
sudo apt-get install -y mongodb

# Install depedencies
# cd /vagrant/
# npm install && bower install