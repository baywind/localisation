#!/bin/sh
WORKSPACE=/Users/gena/Documents/WOProj/_workspace/rujel
LOCALISATION=/Users/Shared/RujelDeploy/localisation

cd $WORKSPACE
for f in */Resources/*.plist ; do
	NEWNAME=`echo $f | sed "s/\/Resources\//_/g"`
	cp -f $f $LOCALISATION/Strings/$NEWNAME
	echo $NEWNAME
done
rm -f $LOCALISATION/Strings/*access.plist

for f in */Resources/*.html ; do
	NEWNAME=`echo $f | sed "s/\/Resources\//_/g"`
	cp -f $f $LOCALISATION/Strings/$NEWNAME
	echo $NEWNAME
done

cp -rf $WORKSPACE/Supplemental/RujelReports $LOCALISATION