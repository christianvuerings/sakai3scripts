#!/bin/bash
# Start sakai3

source ./config.sh

echo "// Make the log directory"
mkdir -p ${SAKAI3_LOG}

echo "// Start sakai"
cd ${SAKAI3_OPEN_EXPERIMENTS}
java -XX:MaxPermSize=128m -Xmx512m -server -Dcom.sun.management.jmxremote -jar ${SAKAI3_JAR} -f - 1> ${SAKAI3_LOG_NAKAMURA} 2>&1 &