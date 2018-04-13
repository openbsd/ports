#!/bin/sh
set -e

libexec_dir=${TRUEPREFIX}/libexec/os-test
libdata_dir=${TRUEPREFIX}/libdata/os-test

uname -srm > uname.out

for suite in `cat $libdata_dir/suite.list`; do
	rm -rf -- $suite $suite.expect
	mkdir $suite $suite.expect
	cp $libdata_dir/$suite/README $suite/
	for test in `cat $libdata_dir/$suite-test.list`; do
		echo -n . >&2
		set +e
		$libexec_dir/$suite/$test > $suite/$test.out 2>&1
		code=$?
		set -e
		if [ ! -s $suite/$test.out ] || [ 2 -le $code ]; then
			echo "exit: $code" >> $suite/$test.out
		fi
		cp $libdata_dir/$suite/$test.c $suite/
		cp $libdata_dir/$suite.expect/$test* $suite.expect/
	done
	echo >&2
done

${TRUEPREFIX}/bin/os-test-html --enable-legend --enable-suites-overview \
    --suite-list "`cat $libdata_dir/suite.list`" > os-test.html
