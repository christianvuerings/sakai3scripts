#!/bin/bash
# Logging the Nakamura instance

source ./config.sh

#Start logging
echo "// Start logging of Nakamura"
tail -f ${SAKAI3_LOG_NAKAMURA}