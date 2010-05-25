#!/bin/sh -e

if [ `id -u` != 0 ]; then
	echo `basename $0`: must be run as root
	exit 1
fi

for i in `ldd /var/www/cgi-bin/apcupsd/upsimage.cgi | sed -e '1,3d' -e 's/^.* \([^ ]*\)$/\1/g'`; do
	cp $i /var/www/$i
done
