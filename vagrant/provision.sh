#!/usr/bin/env bash
# installed following this tutorial:
## https://gorails.com/setup/ubuntu/14.04

# install ruby dependencies
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties -y

# install postgresql
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib libpq-dev -y

# setup a database for the app 
sudo -u postgres createuser vagrant -s
sudo -u vagrant createdb cake-it_development

# make sure we use the home directory of the vagrant user instead of root
#export HOME=/home/vagrant

# install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# install ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

# grant ownership to vagrant user
sudo chown vagrant:vagrant /home/vagrant/.rbenv

# install ruby
rbenv install 2.1.3
rbenv global 2.1.3

# instruct rubygems NOT to install documentation for each package locally
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
# grant ownership to vagrant user
sudo chown vagrant:vagrant /home/vagrant/.gemrc

# Rails depends on nodejs for features such as the Asset Pipeline
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs -y

#### bundler may install rails for me from the gem file
#### so I may not need gem install rails
# install rails
# gem install rails

# install libs
gem install bundler
cd /vagrant
bundle install

# update rbenv shims
rbenv rehash
