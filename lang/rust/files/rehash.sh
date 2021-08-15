#!/bin/ksh
PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin'

set -eu

if [ $# -lt 2 ]; then
	echo "usage: $0 triple name=hash [...]"
	exit 1
fi

REPLACE=`mktemp -t rehash-replace.XXXXXXXXXX` || exit 1
trap "rm -f ${REPLACE}" 1 2 3 13 15 EXIT ERR

TRIPLE="$1"
shift

echo "Renaming files..."
while [ $# -ne 0 ]; do
	name=${1%=*}
	newhash=${1##*=}
	shift

	oldpath=$(echo lib/rustlib/${TRIPLE}/lib/lib${name}-*.rlib)
	if [ -e "${oldpath}" ]; then
		oldhash=${oldpath%.rlib}
		oldhash=${oldhash##*-}
	else
		oldpath=$(echo lib/lib${name}-*.so)
		if [ ! -e "${oldpath}" ]; then
			echo "error: missing library: ${name}" >&2
			exit 1
		fi

		oldhash=${oldpath%.so}
		oldhash=${oldhash##*-}
	fi

	[ ${oldhash} = ${newhash} ] && continue

	echo " - ${name} ${oldhash} ${newhash}"

	if [ ${#oldhash} != ${#newhash} ] ; then
		echo "error: hash size differs. inplace patching will fail" >&2
		exit 1
	fi

	echo "s/${oldhash}/${newhash}/g" >>"${REPLACE}"

	if [ -e "lib/rustlib/${TRIPLE}/lib/lib${name}-${oldhash}.rlib" ]; then
		mv "lib/rustlib/${TRIPLE}/lib/lib${name}-${oldhash}.rlib" \
			"lib/rustlib/${TRIPLE}/lib/lib${name}-${newhash}.rlib"
	fi

	if [ -e "lib/lib${name}-${oldhash}.so" ]; then
		mv "lib/lib${name}-${oldhash}.so" \
			"lib/lib${name}-${newhash}.so"
	fi

	if [ -e "lib/rustlib/${TRIPLE}/lib/lib${name}-${oldhash}.so" ]; then
		mv "lib/rustlib/${TRIPLE}/lib/lib${name}-${oldhash}.so" \
			"lib/rustlib/${TRIPLE}/lib/lib${name}-${newhash}.so"
	fi
done

echo "Patching files..."
find . -type f -exec sed -i -f "${REPLACE}" {} +
