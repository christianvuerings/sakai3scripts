#!/bin/bash
# Setup the Sakai 3 environment

source config.sh

echo "// Clone the Camtools repo"
cd ${SAKAI3_ROOT}
git clone ${SAKAI3_REPO_CAMTOOLS_FORK}
echo "// Add the remote master branch"
cd ${SAKAI3_CAMTOOLS}
git remote add ${SAKAI3_REPO_CAMTOOLS_MAIN_CONTRIBUTOR} ${SAKAI3_REPO_CAMTOOLS_MAIN}

# Update the Camtools repo
cd ${SAKAI3_SCRIPTS}
source sakaiupdatecamtools.sh