---
title: "Run Maven in Docker"
date: 2018-04-13T04:53:46Z
publishDate: 2018-04-13T04:53:46Z
draft: false
tags: ["maven", "docker", "docker-compose"]
---
Sample how to run maven in docker (to be executed in project root directory, that is, directory that containts project pom.xml):

```
$ docker run --rm \
  --name maven-build \
  -v "$(pwd)":/opt \
  -v ~/.m2:/root/.m2 \
  maven:3.5.3-alpine \
  mvn -f /opt/pom.xml clean install
```
<!--more-->
or in docker-compose:
```
version: '3'
services:

  maven-build:
    image: maven:3.5.3-alpine
    container_name: maven-build
    volumes:
      - ./:/opt
      - ~/.m2:/root/.m2
    entrypoint:
      -  mvn
      - -f
      - /opt/pom.xml
      - clean
      - install
```
