#!/bin/bash

echo "容器cluster-slave1正在启动。。。"
docker run -d --privileged -ti  --name cluster-slave1 -h slave1 --net netgroup --ip 172.15.0.3 dockerused/centos:hadoop-spark  /usr/sbin/init
echo "容器cluster-slave1正在启动。。。"
docker run -d --privileged -ti  --name cluster-slave2 -h slave2 --net netgroup --ip 172.15.0.4 dockerused/centos:hadoop-spark  /usr/sbin/init
echo "容器cluster-slave1正在启动。。。"
docker run -d --privileged -ti  --name cluster-master -h master --net netgroup --ip 172.15.0.2 dockerused/centos:hadoop-spark /usr/sbin/init 
