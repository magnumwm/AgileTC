FROM openjdk:8-jdk-alpine as build

VOLUME  /tmp

WORKDIR /workspace/app

COPY case-server/target/*.jar .

LABEL maintainer="aqumon"

ENV JAVA_OPTIONS="-Dfile.encoding=utf-8 -Djava.awt.headless=true"

