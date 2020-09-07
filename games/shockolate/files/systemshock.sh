#!/bin/sh

GAMEDIR="$HOME/.local/share/shockolate"
lower=

lowercase()
{
	lower="$(echo `basename "$1"` | tr '[A-Z]' '[a-z]')"
	if [ "$lower" != "`basename "$1"`" ] ; then
		mv "`dirname "$1"`/`basename "$1"`" "`dirname "$1"`/$lower"
		if [ $? -gt 0 ] ; then
			echo "error lowercasing $1"
			exit
		fi
	fi
}

if [ ! -e "$GAMEDIR/shaders" ] ; then
	mkdir -p "$GAMEDIR"
	cp -R ${TRUEPREFIX}/share/shockolate/shaders "$GAMEDIR/"
fi

if [ ! -e "$GAMEDIR/res" ] ; then
	mkdir -p "$GAMEDIR/res"
	echo "ERROR: please copy directories DATA and SOUND from System Shock Classic to \"$GAMEDIR/res/\""
	exit
fi

if [ ! -e "$GAMEDIR/res/generaluser_gs.sf2" ] ; then
	ln -sf "${LOCALBASE}/share/generaluser-gs/GeneralUser_GS.sf2" "$GAMEDIR/res/generaluser_gs.sf2"
fi

if [ -n "$(ls "$GAMEDIR/res" | grep [A-Z])" ] ; then
	for f in `find -d "$GAMEDIR/res"`; do
		if [ "$f" != "$GAMEDIR/res/" ] ; then
			lowercase "$f"
		fi
	done
fi

cd "$GAMEDIR"
${TRUEPREFIX}/share/shockolate/systemshock $*
