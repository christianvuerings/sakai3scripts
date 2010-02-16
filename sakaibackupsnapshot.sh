#!/bin/bash
# Backup the latest snapshot

source ./config.sh

echo "// Go to the backup folder"
cd ${SAKAI3_BACKUP}

echo "// Make the directory in the backup folder"
NOW=$(date +"%y%m%d")
DIR_NAME=$NOW"_snapshot"
echo $DIR_NAME
mkdir $DIR_NAME

echo "// Go in the newly created directory"
cd $DIR_NAME

echo "// Copy the snapshot file to the backup folder"
cp ${SAKAI3_JAR} ${SAKAI3_JAR_PART}

echo "// Copy the jackrabbit folder to the backup folder"
cp -R ${SAKAI3_JACKRABBIT} jackrabbit