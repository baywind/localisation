#!/bin/sh
WORKSPACE=/Users/gena/Documents/WOProj/_workspace/rujel
LOCALISATION=/Users/Shared/RujelDeploy/localisation/Strings

cd $WORKSPACE
for f in */Resources/*.plist ; do
	NEWNAME=`echo $f | sed "s/\/Resources\//_/g"`
	cp -f $f $LOCALISATION/$NEWNAME
	echo $NEWNAME
done