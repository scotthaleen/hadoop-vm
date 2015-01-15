#!/usr/bin/env bash


printf "Setup \e[0;36mLinux\e[0m \n"

## repos
. /vagrant/provision/java-repo.sh

mv /vagrant/artifacts/cloudera.list /etc/apt/sources.list.d/cloudera.list
curl -s http://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/archive.key | sudo apt-key add -

apt-get -y update
apt-get -y upgrade

. /vagrant/provision/java.sh

. /vagrant/provision/hadoop.sh 

apt-get install git

