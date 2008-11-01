#!/bin/sh
# $OpenBSD: xmutt.sh,v 1.1 2008/11/01 19:30:07 ajacoutot Exp $

export PATH=$PATH:/usr/X11R6/bin:/usr/local/bin

if [ "$1" = "--body" ]; then
	mail=`mktemp /tmp/mutt.XXXXXXXXXX` || exit 1
	trap 'rm $mail' 0 1 15
	echo "$2" | tr "\r\f" "\n" > $mail
	recode utf8..latin1 $mail
	shift 2
	xterm -e mutt -i $mail "$@"
else
	xterm -e mutt "$@"
fi
