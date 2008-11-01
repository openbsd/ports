#!/bin/sh
# $OpenBSD: xdg-open-hook.sh,v 1.1 2008/11/01 19:30:07 ajacoutot Exp $

filename=`echo "$1" | sed s#file:##`
case $filename in
*.pdf)
	if `which xpdf > /dev/null`; then
		xpdf $filename &
	elif `which acroread > /dev/null`; then
		acroread $filename &
	fi
	;;
*)
	opera "$1" &
	;;
esac
