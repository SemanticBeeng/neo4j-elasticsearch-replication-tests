#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JRE_HOME=/usr/lib/jvm/java-8-oracle

neo/bin/neo4j start
sleep 10
cat neo/logs/neo4j.log
sleep 10
cat neo/logs/neo4j.log