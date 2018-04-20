#!/bin/bash

source /etc/profile

/usr/local/jdk1.8.0_121/bin/java -server -Xms4g -Xmx4g -Xmn1g -Xss256k -XX:PermSize=128m -XX:MaxPermSize=128m -XX:+UseConcMarkSweepGC -XX:CMSInitiatingOccupancyFraction=80 -XX:ParallelGCThreads=3 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:/usr/local/yunji/titan-agent/logs/gc.log  -Dlog_dir=/usr/local/yunji/logs/ -jar titan-agent*.jar >/usr/local/yunji/titan-agent/logs/log 2>&1  &

