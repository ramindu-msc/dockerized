#!/bin/sh
rm -rf /tmp/kafka-logs/
rm -rf /tmp/zookeeper/
#cd kafka_2.13-3.0.0/
echo "starting zookeeper server"
nohup ./bin/zookeeper-server-start.sh config/zookeeper.properties &
echo "waiting 10 seconds"
sleep 10
echo "starting kafka server"
nohup ./bin/kafka-server-start.sh config/server.properties &
echo "waiting 10 seconds"
sleep 10
