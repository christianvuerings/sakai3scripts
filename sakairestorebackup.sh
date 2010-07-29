#!/bin/bash
# Restore a previous backup

source ./config.sh

echo "// Go to the backup folder"
cd ${SAKAI3_BACKUP}

echo "// Create the directory name"
NOW=$(date +"%y%m%d")
DIR_NAME=$NOW"_snapshot"
echo $DIR_NAME

echo "// Go in the newly created directory"
cd $DIR_NAME

echo "// Copy the snapshot file from the backup folder to the main folder"
cp ${SAKAI3_JAR_PART} ${SAKAI3_JAR}

echo "// Copy the jackrabbit folder from the backup folder to the main folder"
cp -R jackrabbit ${SAKAI3_JACKRABBIT}