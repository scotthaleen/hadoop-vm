#!/usr/bin/env bash

## repos
. /vagrant/provision/java-repo.sh

cp /vagrant/artifacts/cloudera.list /etc/apt/sources.list.d/cloudera.list
curl -s http://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/archive.key | sudo apt-key add -

apt-get -y update
apt-get -y upgrade
apt-get -y install git

mkdir -p /srv/software

. /vagrant/provision/java.sh

. /vagrant/provision/hadoop.sh 

. /vagrant/provision/gradle.sh

. /vagrant/provision/spark.sh


