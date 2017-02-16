FROM alpine:3.5

MAINTAINER RunAbove <contact@runabove.com>

RUN apk --update add openjdk8-jre=8.121.13-r0 wget bash  && \
	rm -rf /var/cache/apk && \
	wget -q http://www.eu.apache.org/dist/kafka/0.10.1.1/kafka_2.11-0.10.1.1.tgz -O /tmp/kafka.tgz && \
	mkdir -p /opt && tar -xzf /tmp/kafka.tgz -C /opt && \
	mv /opt/kafka_2.11-0.10.1.1 /opt/kafka && \
	rm /tmp/kafka.tgz

ENTRYPOINT ["/opt/kafka/bin/kafka-topics.sh"]