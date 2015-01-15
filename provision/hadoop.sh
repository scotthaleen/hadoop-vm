#!/usr/bin/env bash

apt-get -y install hadoop-yarn-resourcemanager
apt-get -y install hadoop-hdfs-namenode
apt-get -y install hadoop-hdfs-secondarynamenode
apt-get -y install hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce
apt-get -y install hadoop-mapreduce-historyserver hadoop-yarn-proxyserver
apt-get -y install hadoop-client
apt-get -y install hadoop-conf-pseudo
apt-get -y remove hadoop-0.20-conf-pseudo hadoop-0.20-mapreduce-*

for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x stop ; done

sudo -u hdfs hdfs namenode -format

for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start; done

sudo /usr/lib/hadoop/libexec/init-hdfs.sh

#test
#sudo -u hdfs hadoop fs -ls -R /

#http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/cdh_qs_yarn_pseudo.html
sudo -u hdfs hadoop fs -mkdir /user/vagrant
sudo -u hdfs hadoop fs -chown vagrant /user/vagrant


#Zookeeper
apt-get -y install zookeeper
