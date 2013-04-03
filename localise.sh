#!/bin/sh
DISTRO=/Users/Shared/RujelDeploy/rpms/rujel/RUJEL
LOCALISATION=/Users/Shared/RujelDeploy/localisation

cd $DISTRO/Frameworks
for f in *.framework/Resources/*.plist ; do
	NEWNAME=`echo $f | sed "s/\.framework\/Resources\//_/g"`
	cp -f $f $LOCALISATION/Strings/$NEWNAME
	echo $NEWNAME
done
rm -f $LOCALISATION/Strings/*Info.plist
rm -f $LOCALISATION/Strings/*access.plist

for f in *.framework/Resources/*.html ; do
	NEWNAME=`echo $f | sed "s/\.framework\/Resources\//_/g"`
	cp -f $f $LOCALISATION/Strings/$NEWNAME
	echo $NEWNAME
done

cp -f $DISTRO/Rujel.woa/Contents/Resources/Strings.plist $LOCALISATION/Strings/Rujel_Strings.plist
echo Rujel_Strings.plist
cp -f $DISTRO/RujelDiary.woa/Contents/Resources/Strings.plist $LOCALISATION/Strings/RujelDiary_Strings.plist
echo RujelDiary_Strings.plist


cp -rf $DISTRO/Configuration/RujelReports $LOCALISATION