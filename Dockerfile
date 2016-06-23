FROM alpine:3.4

MAINTAINER RunAbove <contact@runabove.com>

RUN apk --update add openjdk8-jre=8.92.14-r1 wget bash  && \
	rm -rf /var/cache/apk && \
	wget -q http://www.eu.apache.org/dist/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz -O /tmp/kafka.tgz && \
	mkdir -p /opt && tar -xzf /tmp/kafka.tgz -C /opt && \
	mv /opt/kafka_2.11-0.9.0.1 /opt/kafka && \
	rm /tmp/kafka.tgz && \
	mkdir /opt/kafka/data && \
	chmod +x /opt/kafka/bin/kafka-server-start.sh

ENTRYPOINT ["/opt/kafka/bin/kafka-topics.sh"]