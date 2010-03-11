#!/bin/bash
# Start sakai3 Camtools

source ./config.sh

echo "// Build Camtools"
cd ${SAKAI3_CAMTOOLS}
mvn clean install
echo "// Build Camtools Finished"