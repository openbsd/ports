#!/bin/sh

# get mainClass from config.json
mainclass=
mainclass="$(cat config.json | grep mainClass | cut -d\" -f 4)"

# TODO: get vmArgs from config.json
vmargs="-Xmx2G"

TRUEPREFIX=/usr/local
JAVA_HOME=${TRUEPREFIX}/jdk-11 PATH=$PATH:$JAVA_HOME/bin java $vmargs $mainclass
