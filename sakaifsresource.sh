#!/bin/bash
# Setup the fsresource bundle

source ./config.sh

cd ${SAKAI3_OSGIKERNEL}/tools
./startux.sh -j ${SAKAI3_FSRESOURCE} -d ${SAKAI3_UX}/dev -w ${SAKAI3_UX}/devwidgets