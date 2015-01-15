#!/usr/bin/env bash

cd /tmp/

wget http://d3kbcqa49mib13.cloudfront.net/spark-1.2.0-bin-hadoop2.3.tgz

tar -zxvf spark-1.2.0-bin-hadoop2.3.tgz

mv spark-1.2.0-bin-hadoop2.3 /srv/software/

chown vagrant:vagrant -R /srv/software/spark-1.2.0-bin-hadoop2.3
sudo ln -s spark-1.2.0-bin-hadoop2.3/ /opt/spark

mkdir -p /opt/spark/logs
chmod 777 /opt/spark/logs

/opt/spark/sbin/start-master.sh




