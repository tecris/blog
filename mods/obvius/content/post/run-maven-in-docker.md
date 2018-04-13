---
title: "Run Maven in Docker"
date: 2018-04-13T04:53:46Z
draft: true
---
Sample how to run maven in docker:
```
$ docker run --rm \
  --name maven-build \
  --mount type=bind,source="$(pwd)",target=/opt \
  --mount type=bind,source="$(pwd)"/.m2,target=/root/.m2 \
  maven:3.5.2-alpine \
  mvn -f /opt/pom.xml clean install
```

or in docker-compose:
```
version: '3'
services:

  maven-build:
    image: maven:3.5.2-alpine
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
