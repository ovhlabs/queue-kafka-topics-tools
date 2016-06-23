[Dockerfile for Apache Kafka topics management](https://www.runabove.com/dbaas-queue.xml)
 
The Kafka-topics-tools docker image basically contains the official Kafka binaries, but focuses on running the kafka-topics shell script as an entrypoint.
Can be used with any standard Kafka cluster, and with OVH DBaaS Queue.
 
# Installation

```
docker build -t ovhcom/kafka-topic-tools .
```
 
# Howto's

Usage:
```
docker run --rm ovhcom/kafka-topics-tools <args>
```

Example: 
```
docker run --rm ovhcom/kafka-topics-tools --zookeeper $ZK_URL:2181/$KEY \
	--create --topic $TOPIC --replication-factor 2 --partitions 15
```

 
## Get the sources
 
``` 
git clone https://github.com/runabove/queue-kafka-topics-tools.git
cd kafka-topics-tools
```
 
You've developed a new cool feature ? Fixed an annoying bug ? We'd be happy
to hear from you !
 
# Related links
 
 * Contribute: https://github.com/runabove/queue-kafka-topics-tools
 * Report bugs: https://github.com/runabove/queue-kafka-topics-tools/issues
 
# License
 
See https://github.com/runabove/queue-kafka-topics-tools/blob/master/LICENSE