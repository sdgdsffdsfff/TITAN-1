#!/bin/bash

#每台机器启动的agent节点数量
AGENT_NUM=2

#所有agent机器地址
AGENT_ADDRESS=('172.16.0.175'
'172.16.0.173'
)

#重新启动所有机器上的agent节点
for i in `seq 1 $AGENT_NUM`
do
        for address in ${AGENT_ADDRESS[*]}
        do
                nohup ssh root@$address "cd /usr/local/yunji/titan-agent*; sh start.sh &" >/dev/null 2>log &
        done
done
sleep 5
echo '所有机器上的agent节点已经全部重启'
