#!/bin/bash
# Config file for sakai3 scripts

# Directories
SAKAI3_ROOT="/Users/cv268/Projects/Sakai/3akai"
SAKAI3_SCRIPTS=${SAKAI3_ROOT}"/scripts"
SAKAI3_UX=${SAKAI3_ROOT}"/3akai-ux"
SAKAI3_OPEN_EXPERIMENTS=${SAKAI3_ROOT}"/K2/open-experiments"
SAKAI3_OSGIKERNEL=${SAKAI3_OPEN_EXPERIMENTS}"/slingtests/osgikernel"
SAKAI3_TARGET=${SAKAI3_OSGIKERNEL}"/app/target"
SAKAI3_SLING=${SAKAI3_OSGIKERNEL}"/sling"
SAKAI3_JACKRABBIT=${SAKAI3_SLING}"/jackrabbit"

SAKAI3_BACKUP="/Users/cv268/Backup"
SAKAI3_LOG=${SAKAI3_ROOT}"/logs"
SAKAI3_MAVEN_REPOSITORY="/Users/cv268/.m2/repository"
SAKAI3_MAVEN_REPOSITORY_REMOVE[1]=${SAKAI3_MAVEN_REPOSITORY}"/org/sakaiproject/nakamura"
SAKAI3_MAVEN_REPOSITORY_REMOVE[2]=${SAKAI3_MAVEN_REPOSITORY}"/org/apache/sling"

# Files
SAKAI3_FSRESOURCE=${SAKAI3_ROOT}"/org.apache.sling.fsresource-0.9.3-SNAPSHOT.jar"
SAKAI3_LOG_NAKAMURA=${SAKAI3_LOG}"/nakamura.log"

# Jar
cd $SAKAI3_TARGET
SAKAI3_JAR_PART=`ls | grep -i ".jar" | grep -v "sources"`
SAKAI3_JAR=${SAKAI3_TARGET}"/"${SAKAI3_JAR_PART}

# The port where you want to run Sakai3 on
SAKAI3_PORT="8080"