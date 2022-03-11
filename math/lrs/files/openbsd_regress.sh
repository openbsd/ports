#!/bin/sh

IN=test.ine
OUT=actual_outcome.ine
EXPECT=expected_outcome.ine

./lrsgmp ${IN} | grep -e '^ 1' 2>&1 | tee ${OUT}

DIFF=`diff -u ${OUT} ${EXPECT}`
if [ -n "${DIFF}" ]; then
	echo "ERROR: Regression test failed:"
	echo "${DIFF}"
	exit 1
fi

echo "OK: Regression test passed"
exit 0
