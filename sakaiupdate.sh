#!/bin/bash
# Update the Sakai 3 environment

source ./config.sh

# Check whether we want to start the camtools repo or the sakai one
SAKAI3_CAMTOOLS_START=""

while getopts ":c" opt; do
  case $opt in
    c)
      SAKAI3_CAMTOOLS_START="yes"
      ;;
  esac
done

# Kill Java
echo "// Kill all the java processes"
killall -9 java

# Remove the repository folder
echo "// Clean the maven repository folders"
for i in ${SAKAI3_MAVEN_REPOSITORY_REMOVE[*]}
do
	echo "//// Removing: "$i
	rm -rf $i
done

# Remove the sling folder
echo "// Remove the sling folder"
echo "//// Removing: "${SAKAI3_SLING}
rm -rf ${SAKAI3_SLING}

# Update K2
cd $SAKAI3_OPEN_EXPERIMENTS

echo "// Switch to the master branch"
git checkout master

echo "// Fetch sakai"
git fetch sakai

echo "// Merge sakai"
git merge sakai/master

echo "// Push to your master"
git push origin master

echo "// Build Nakamura"
#mvn clean install
mvn clean install -Dmaven.test.skip=true
echo "// Build Nakamura Finished"

# Update 3akai-ux
cd ${SAKAI3_SCRIPTS}
source sakaiupdateux.sh

if [ $SAKAI3_CAMTOOLS_START ]
then
	# Update Camtools
	cd ${SAKAI3_SCRIPTS}
	source sakaiupdatecamtools.sh
	
	# Build Camtools
	cd ${SAKAI3_SCRIPTS}
	source sakaibuildcamtools.sh
	
	# Start Camtools
	cd ${SAKAI3_SCRIPTS}
	source sakaistartcamtools.sh
else
	# Start Sakai
	cd ${SAKAI3_SCRIPTS}
	source sakaistart.sh
fi

# Adjust the fsresource extensions
cd ${SAKAI3_SCRIPTS}
source sakaifsresource.sh

# Start logging
cd ${SAKAI3_SCRIPTS}
source sakailogging.sh