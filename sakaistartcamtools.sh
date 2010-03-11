#!/bin/bash
# Start sakai3 Camtools

source ./config.sh

echo "// Make the log directory"
mkdir -p ${SAKAI3_LOG}

echo "// Start sakai"
cd ${SAKAI3_CAMTOOLS}
java -XX:MaxPermSize=128m -Xmx512m -server -Dcom.sun.management.jmxremote -jar ${SAKAI3_CAMTOOLS_JAR} -f - 1> ${SAKAI3_LOG_NAKAMURA} 2>&1 &
