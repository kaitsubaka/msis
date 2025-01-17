#!/usr/bin/env bash
REV=$1
TOOLDIR="./build"

if [ ! -d $TOOLDIR ]; then
mkdir $TOOLDIR 
else
rm -rf $TOOLDIR/*
fi

cd $TOOLDIR

wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

chmod +x BuildTools.jar

java -jar BuildTools.jar --rev $REV && rm ../spigot.jar

mv spigot-$REV.jar ../spigot.jar

cd ..

rm -rf $TOOLDIR