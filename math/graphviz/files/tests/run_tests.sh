#!/bin/sh
#
# $OpenBSD: run_tests.sh,v 1.2 2016/07/01 14:25:17 sthen Exp $
# Simple regression tests for the OpenBSD graphviz port

# Silence deprecated guile constructs
export GUILE_WARN_DEPRECATED=no

# List of tests to run, of the form:
# compiler:testfile
tests="${LOCALBASE}/bin/guile:guile-test.scm"
tests="${tests} /usr/bin/perl:perl-test.pl"
tests="${tests} ${MODTCL_BIN}:tcl-test.tcl"
tests="${tests} ${LOCALBASE}/bin/dot:dot-test.dot"
tests="${tests} ${LOCALBASE}/bin/neato:neato-test.nto"

for t in ${tests}; do
	compiler=`echo $t | awk -F: '{print $1}'`
	infile=`echo $t | awk -F: '{print $2}'`
	outfile=${infile}.out
	expectfile=${infile}.expect
	difffile=${infile}.diff

	echo "Running test: ${infile}"
	if ! ${compiler} ${infile} > ${outfile}; then
		echo "FAILED (execution failed)" && exit 1
	fi

	if [ ! -f ${expectfile} ]; then
		echo "FAILED (missing expected outcome)" && exit 1
	fi

	if ! diff -u ${expectfile} ${outfile} > ${difffile}; then
		echo "FAILED (unexpected outcome)" && cat ${difffile} && exit 1
	fi

	rm ${difffile} ${outfile}
	echo "PASSED"
done
