#!/bin/sh -
#
# Copyright (c) 2019 joshua stein <jcs@jcs.org>
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
#

set +o sh
set -o noglob

me=`basename $0`
ver=""

parsefile() {
	ver=`sed -e 's/^\([0-9]\)\./\1/' -e 's/\..*//' < ${1}`
}

# check current-directory, then walk back to /
dir=$PWD
while true; do
	if [ -s "${dir}/.ruby-version" ]; then
		parsefile "${dir}/.ruby-version"
		break
	elif [ ! -n "$dir" ]; then
		break
	else
	    dir="${dir%/*}"
	fi
done

if [[ $ver == "" ]]; then
	# check system-wide /etc/ruby-version
	if [ -s /etc/ruby-version ]; then
		parsefile /etc/ruby-version
	fi
fi

if [[ $ver == "" ]]; then
	# otherwise find the newest installed ruby
	set +o noglob
	ver=`echo /usr/local/bin/ruby?? | sort -n | tail -1 | sed 's/.*ruby//'`
	set -o noglob
fi

if [[ $ver == "" ]]; then
	echo "can't find a ruby version to use" >/dev/stderr
	exit 1
fi

exec ${me}${ver} "$@"
