#!/bin/sh

LOCALBASE=@LOCALBASE@
PREFIX=@PREFIX@

if [ -x /sbin/ldconfig ]; then
 /sbin/ldconfig -m $PREFIX/lib/mysql
 if [ -d $LOCALBASE/lib/pth ]; then
   /sbin/ldconfig -m $LOCALBASE/lib/pth
 fi
fi

if [ -x $PREFIX/bin/safe_mysqld ]; then
 $PREFIX/bin/safe_mysqld > /dev/null & echo -n ' mysql'
fi
