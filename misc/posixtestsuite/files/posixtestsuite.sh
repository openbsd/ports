#!/bin/sh
#	$OpenBSD: posixtestsuite.sh,v 1.1.1.1 2018/05/02 21:06:48 bluhm Exp $

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

timeout_val=240
timeout_ret=`cat $libdata_dir/t0.val`
timeout="$libexec_dir/t0 $timeout_val"

exec 3>logfile
while read test; do
	(
	dir=${test%/*}
	mkdir -p $dir
	cd $dir
	name=${test%.test}
	name=${name##*/}
	echo -n execution: "" >$name.run
	echo -n ${test%.test}: execution: "" >&3
	echo -n ${test%.test}: execution: ""
	set +e
	$timeout $libexec_dir/$test >$name.log 2>&1
	result=$?
	set -e
	if [ -f $libdata_dir/${test%.test}.c ]; then
		cat $libdata_dir/${test%.test}.c >$name.c
		cat $libdata_dir/${test%.test}.build >$name.build
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
		$timeout)
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
		cat $libdata_dir/${test%.test}.sh >$name.sh
		case $result in
		0)
			msg=PASS
			;;
		*)
			msg=FAILED
			;;
		esac
	fi
	echo $msg >>$name.run
	cat $name.log >>$name.run
	if [ "$result" -eq 0 ]; then
		echo $msg >&3
	else
		echo $msg: Output: >&3
		cat $name.log  >&3
	fi
	echo $msg
	rm -f $name.log
	)
done <${libdata_dir}/test.list
