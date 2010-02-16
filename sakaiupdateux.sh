#!/bin/bash
# Update 3akai-ux

source config.sh

echo "// Update the ux project"
cd ${SAKAI3_UX}
git checkout master
git fetch oszkarnagy
git merge oszkarnagy/master