---
title: "Log4j2 Kafka Appender"
date: 2018-05-05T18:33:25Z
publishDate: 2018-05-06T19:53:46Z
draft: false
tags: ["log4j2", "java", "kafka", "docker", "docker-compose"]
---
This example demonstrates how to send logs to Kafka using log4j2 [KafkaAppender](https://logging.apache.org/log4j/2.x/manual/appenders.html#KafkaAppender).

#### Stack
 * Java 8
 * Kafka 1.1.0
 * Maven 3.5

The `oneLiner` script was tested on Ubuntu 16.04 with docker & docker-compose.

- `git clone https://github.com/tecris/blog-samples`
- `cd log4j2-kafka`
- `$ ./oneLiner.sh`

[log4j2.xml](https://github.com/tecris/blog-samples/blob/master/log4j2-kafka/src/main/resources/log4j2.xml) configuration:
```
<Appenders>
  <Kafka name="Kafka" topic="${sys:kafkaTopic}">
    <PatternLayout pattern="[%-5level] %d{yyyy-MM-dd HH:mm:ss.SSS} [%t] %c{1} - %msg%n"/>
    <Property name="bootstrap.servers">${sys:kafkaUrl}</Property>
  </Kafka>
  ...
</Appenders>
```
<!--more-->

Sample source code available for download on [github](https://github.com/tecris/blog-samples/tree/master/log4j2-kafka)
