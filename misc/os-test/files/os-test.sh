#!/bin/sh
set -e

libexec_dir=${TRUEPREFIX}/libexec/os-test
libdata_dir=${TRUEPREFIX}/libdata/os-test

uname -srm >uname.out

while read suite; do
	rm -rf -- $suite $suite.expect
	mkdir $suite $suite.expect
	cp $libdata_dir/$suite/README $suite/
	while read test; do
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
	done <$libdata_dir/$suite-test.list
	echo >&2
done <$libdata_dir/suite.list
