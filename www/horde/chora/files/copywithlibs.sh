#!/bin/sh -e
# Copy an executable file/s, complete with libraries, into a chroot jail.
#
# $OpenBSD: copywithlibs.sh,v 1.1.1.1 2010/08/18 15:04:05 sthen Exp $
# Copyright (c) 2010 Stuart Henderson <sthen@openbsd.org>
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

MYNAME=`basename $0`
DEST=/var/www

copy_to() {
	local _to=$1
	while [ -n "$2" ]; do
		shift
		if ! diff $1 ${_to} > /dev/null 2>&1; then
			echo copying $1
			install -C $1 ${_to}
		fi
	done
}

copy_with_libs() {
	local _file="$1"
	local _lddmsg
	local _libs
	local _static

	if ! _lddmsg=`ldd "${_file}" 2>&1`; then
		# allow static binaries to be copied, bail for other errors
		if ! echo ${_lddmsg} |
		    fgrep 'not a dynamic executable' > /dev/null; then
			echo $MYNAME: ${_lddmsg}
			return
		fi
	fi

	copy_to ${DEST}/usr/bin ${_file}

	_libs=`ldd "${_file}" 2>/dev/null |
	    awk '/\/usr(\/local)?\/lib\/.*\.so\./ { print $7; }'`

	[ -n "${_libs}" ] && copy_to ${DEST}/usr/lib ${_libs}
}

if [ -z "$1" ]; then
	echo usage: $MYNAME /path/to/program
	exit 1
fi

if [ ! -d "${DEST}" ]; then
	echo $MYNAME: ${DEST} not a directory
	exit 1
fi

if [ ! -w "${DEST}" ]; then
	echo $MYNAME: ${DEST} not writable
	exit 1
fi

install -d ${DEST}/usr/bin ${DEST}/usr/lib ${DEST}/usr/libexec
install -C /usr/libexec/ld.so ${DEST}/usr/libexec

while [ -n "$1" ]; do
	copy_with_libs $1
	shift
done
