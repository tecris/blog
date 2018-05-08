---
title: "Log4j2 Kafka Appender With TLS Secured Kafka Broker"
date: 2018-05-07T18:33:25Z
publishDate: 2018-05-07T19:53:46Z
draft: false
tags: ["log4j2", "java", "kafka", "docker", "docker-compose"]
---
This example demonstrates how to send logs to a TLS secured Kafka broker using log4j2 [KafkaAppender](https://logging.apache.org/log4j/2.x/manual/appenders.html#KafkaAppender).

The oneLiner script was tested on Ubuntu 16.04 with docker & docker-compose.

- `git clone https://github.com/tecris/blog-samples`
- `cd log4j2-kafka-tls`
- `$ ./oneLiner.sh`

[log4j2.xml](https://github.com/tecris/blog-samples/blob/master/log4j2-kafka-tls/src/main/resources/log4j2.xml) configuration:
```
<Appenders>
  <Kafka name="Kafka" topic="${sys:kafkaTopic}">
    <PatternLayout pattern="[%-5level] %d{yyyy-MM-dd HH:mm:ss.SSS} [%t] %c{1} - %msg%n"/>
    <Property name="bootstrap.servers">${sys:kafkaUrl}</Property>
    <Property name="security.protocol">SSL</Property>
    <Property name="ssl.truststore.location">/etc/security/tls/client.truststore.jks</Property>
    ...
  </Kafka>
  ...
</Appenders>
```
<!--more-->

Sample source code available for download on [github](https://github.com/tecris/blog-samples/tree/master/log4j2-kafka-tls)
