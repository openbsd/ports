#!/bin/sh

PREFIX=@PREFIX@

if [ -x /sbin/ldconfig ]; then
 /sbin/ldconfig -m ${PREFIX}/lib/mysql
fi

if [ -x ${PREFIX}/bin/safe_mysqld ]; then
 ${PREFIX}/bin/safe_mysqld > /dev/null & echo -n ' mysql'
fi
