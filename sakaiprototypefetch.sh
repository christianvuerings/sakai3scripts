#!/bin/bash
source config.sh

cd $SAKAI3_UX

ALLREMOTEBRANCHES=`git branch -a | grep 'remotes/' | grep -v 'origin' | grep 'prototype' | cut -f2 -d'/'`

for i in $ALLREMOTEBRANCHES
do
  echo "//Fetching $i"
  git fetch $i
done

echo "Do you want to merge in the changes? [y/n]"
read

if [ "$REPLY" = "y" ] || [ "$REPLY" = "Y" ]; then
	echo "Merging in the changes:"

	for i in $ALLREMOTEBRANCHES
	do
	  echo "//Merging $i""/prototype"
	  git merge $i"/prototype"
	done
else
	echo "! You didn't merge in the changes"
fi