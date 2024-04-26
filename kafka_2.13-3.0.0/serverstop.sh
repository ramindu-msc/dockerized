#!/bin/sh
#echo "stoping wso2 server"
#cd wso2si-4.1.0/bin
#./server.sh stop
#sleep 10
echo "stoping kafka server"
cd bin
./kafka-server-stop.sh
echo "waiting 10 seconds"
sleep 10
echo "stoping zookeeper server"
./zookeeper-server-stop.sh
