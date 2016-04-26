# Vagrant setup for NodeJs

## Setup
Be sure to have [Vagrant](https://www.vagrantup.com/) and [Virtualbox](https://www.virtualbox.org/) installed.

Then run:

    vagrant up
    vagrant ssh
    cd /vagrant
    node app

Server listening 'http://localhost:3001'

## File structure
Vagrantfile only contains base machine setup

Shell scripts should be placed in /.provision/bootstrap.sh

Nginx config can be found in /nginx/nginx.conf
