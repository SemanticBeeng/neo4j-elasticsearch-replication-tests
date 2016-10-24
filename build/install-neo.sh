#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JRE_HOME=/usr/lib/jvm/java-8-oracle

wget http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz > null
mkdir neo
tar xzf neo4j-enterprise-$NEO_VERSION-unix.tar.gz -C neo --strip-components=1 > null
cp build/neo4j-inclusion.conf neo/conf/neo4j.conf
cat neo/conf/neo4j.conf
neo/bin/neo4j start > null &