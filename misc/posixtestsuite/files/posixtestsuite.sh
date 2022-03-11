#!/bin/sh

# Copyright (c) 2018 Alexander Bluhm <bluhm@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

set -e

libexec_dir=${TRUEPREFIX}/libexec/posixtestsuite
libdata_dir=${TRUEPREFIX}/libdata/posixtestsuite

uname -srm >uname.out

timeout_val=240
timeout_ret=`cat $libdata_dir/t0.val`
timeout="$libexec_dir/t0 $timeout_val"

while read source; do
	dir=${source%/*}
	mkdir -p $dir
	# provide source and build log for debugging
	cp $libdata_dir/$source $dir
	cp $libdata_dir/${source%.c}.build.log $dir
done <${libdata_dir}/build.list

exec 3>logfile
while read test; do
	(
	dir=${test%/*}
	mkdir -p $dir
	cd $dir
	name=${test%.test}
	name=${name##*/}
	if [ -f $libdata_dir/${test%.test}.sh ]; then
		cp $libdata_dir/${test%.test}.sh .
	fi
	file=$name.run.log
	echo -n execution: "" >$file
	echo -n ${test%.test}: execution: "" >&3
	echo -n ${test%.test}: execution: ""
	set +e
	$timeout $libexec_dir/$test >$name.log 2>&1
	result=$?
	set -e
	if [ -f $libdata_dir/${test%.test}.c ]; then
		case $result in
		0)
			msg=PASS
			;;
		1)
			msg=FAILED
			;;
		2)
			msg=UNRESOLVED
			;;
		4)
			msg=UNSUPPORTED
			;;
		5)
			msg=UNTESTED
			;;
		$timeout_ret)
			msg=HUNG
			;;
		1??)
			msg=INTERRUPTED
			;;
		*)
			msg=UNKNOWN
			;;
		esac
	else
		case $result in
		0)
			msg=PASS
			;;
		*)
			msg=FAILED
			;;
		esac
	fi
	echo $msg >>$file
	cat $name.log >>$file
	if [ "$result" -eq 0 ]; then
		echo $msg >&3
	else
		echo $msg: Output: >&3
		cat $name.log >&3
		echo >&3
	fi
	echo $msg
	rm -f $name.log
	)
done <${libdata_dir}/test.list

cp $libdata_dir/build.log build.log
mv logfile run.log
