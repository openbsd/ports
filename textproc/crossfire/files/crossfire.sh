#!/bin/sh

# Startup for CrossFire (crossfire port) crossword puzzle creator

if [ ! -d ~/crossfire -a ! -f ~/crossfire/default.dict ]; then
	mkdir ~/crossfire
	cp ${TRUEPREFIX}/lib/crossfire/default.dict ~/crossfire
fi

cd ~/crossfire
JAVACMD=$(javaPathHelper -c crossfire)
exec ${JAVACMD} -jar ${TRUEPREFIX}/lib/crossfire/CrossFire.jar
