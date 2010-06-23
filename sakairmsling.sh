#!/bin/bash
# Removes the sling folder

source ./config.sh

# Check if the osgikernel folder is actually a valid folder
if [ ! -d $SAKAI3_OPEN_EXPERIMENTS ]
then
	echo $SAKAI3_OPEN_EXPERIMENTS "is not a valid folder"
	return
fi

# Go to the osgikernel folder
cd $SAKAI3_OPEN_EXPERIMENTS

# Remove the sling folder
rm -r sling

if [ "$?" -eq 0 ]
then
	echo "// The sling folder was removed successful"
else
	echo "// The sling folder could not be removed"
fi