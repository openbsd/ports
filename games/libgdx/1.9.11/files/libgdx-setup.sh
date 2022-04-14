#!/bin/sh

GDXVER=1.9.11
GDXARCH=
if [ "$(uname -p)" = "amd64" ] ; then
	GDXARCH=64
fi

TRUEPREFIX=/usr/local
JAVA_HOME=${TRUEPREFIX}/jdk-11
PATH=$PATH:$JAVA_HOME/bin

for i in $(ls *.jar); do
	jar xvf $i
done

for i in libgdx${GDXARCH}.so libgdx-controllers-desktop${GDXARCH}.so libgdx-freetype${GDXARCH}.so; do
	if [ -f "$i" ] ; then
		ln -sf ${TRUEPREFIX}/share/libgdx/${GDXVER}/$i
	fi
done

if [ -f "liblwjgl${GDXARCH}.so" ] ; then
	ln -sf ${TRUEPREFIX}/share/lwjgl/liblwjgl${GDXARCH}.so
fi

if [ -f "libopenal${GDXARCH}.so" ] ; then
	ln -sf ${TRUEPREFIX}/lib/libopenal.so* libopenal${GDXARCH}.so	# will fail if multiple libopenal.so versions exist
fi

rm -rf com/badlogic
ln -sf ${TRUEPREFIX}/share/libgdx/${GDXVER}/com/badlogic com/badlogic
