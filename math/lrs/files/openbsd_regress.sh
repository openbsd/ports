#!/bin/sh
# $OpenBSD: openbsd_regress.sh,v 1.1.1.1 2011/10/07 08:58:42 edd Exp $

IN=test.ine
OUT=actual_outcome.ine
EXPECT=expected_outcome.ine

./glrs ${IN} | grep -e '^ 1' 2>&1 | tee ${OUT}

DIFF=`diff -u ${OUT} ${EXPECT}`
if [ -n "${DIFF}" ]; then
	echo "ERROR: Regression test failed:"
	echo "${DIFF}"
	exit 1
fi

echo "OK: Regression test passed"
exit 0
