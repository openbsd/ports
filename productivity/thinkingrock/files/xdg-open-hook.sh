#!/bin/sh
# $OpenBSD: xdg-open-hook.sh,v 1.1.1.1 2008/03/26 20:18:35 sturm Exp $

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
