#!/bin/bash
# Update the Sakai 3 environment

source ./config.sh

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

echo "// Fetch ieb"
git fetch ieb

echo "// Merge ieb"
git merge ieb/master

echo "// Push to your master"
git push origin master

echo "// Update the talkscam branch"
git co talkscam
git merge master
git push origin talkscam

echo "// Go To osgikernel"
cd ${SAKAI3_OSGIKERNEL}

echo "// Build K2"
mvn clean install
echo "// Build Finished"

# Update 3akai-ux
cd ${SAKAI3_SCRIPTS}
source sakaiupdateux.sh

# Start Sakai
cd ${SAKAI3_SCRIPTS}
source sakaistart.sh

# Adjust the fsresource extensions
cd ${SAKAI3_SCRIPTS}
source sakaifsresource.sh

# Start logging
cd ${SAKAI3_SCRIPTS}
source sakailogging.sh
