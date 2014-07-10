#!/bin/sh
#
# $OpenBSD: migrate-xscreensaver-config.sh,v 1.2 2014/07/10 07:40:36 ajacoutot Exp $
#
# script originally from gnome-screensavers sources

DIST_BIN=`dirname "$0"`

CMD=xsltproc
XSL=${DIST_BIN}/xscreensaver-config.xsl

if test "x$1" = "x" -o  "x$1" = "x-h" -o "x$1" = "x--help"; then
    echo "usage: $0 [file] ..."
    exit 1
fi

if [ ! -r ${XSL} ]; then
    echo "Cannot find XSLT file"
    exit 1
fi

FILES="$@"
for FILE in $FILES; do
    echo "${FILE}" | grep ".xml$" > /dev/null
    if [ $? -ne 0 ]; then
        echo "Skipping non-xml file: ${FILE}"
        continue
    fi

    d=`dirname ${FILE}`
    b=`basename ${FILE} .xml`

    outfile="${b}.desktop"
    echo "Creating: ${outfile}"
    ${CMD} -o ${outfile} ${XSL} ${FILE}
done

exit 0
