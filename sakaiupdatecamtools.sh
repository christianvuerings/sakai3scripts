#!/bin/bash
# Update the camtools repo

source config.sh

echo "// Update the Camtools repo"
cd ${SAKAI3_CAMTOOLS}
git checkout master
git fetch ${SAKAI3_REPO_CAMTOOLS_MAIN_CONTRIBUTOR}
git merge ${SAKAI3_REPO_CAMTOOLS_MAIN_CONTRIBUTOR}"/master"

echo "// Push the changes to your local repo"
git push origin master