# Copyright (C) 2015 David Dahlberg <david+openbsd.org>
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

tmpdir() {
	[[ -n $SECURE_TMPDIR ]] && return
	local warn=1
	[[ $1 == "nowarn" ]] && warn=0
	local template="$PROGRAM.XXXXXXXXXXXXX"
	[[ $warn -eq 1 ]] && yesno "$(cat <<-_EOF
	The sysctl kern.usermount is not available on OpenBSD,
	therefore it is not possible to create a tmpfs for
	temporary storage of files in memory. 
	This means that it may be difficult to entirely erase 
	the temporary non-encrypted password file after editing. 

	Are you sure you would like to continue?
	_EOF
	)"
	SECURE_TMPDIR="$(mktemp -d "${TMPDIR:-/tmp}/$template")"
	shred_tmpfile() {
		find "$SECURE_TMPDIR" -type f -exec $SHRED {} +
		rm -rf "$SECURE_TMPDIR"
	}
	trap shred_tmpfile INT TERM EXIT
}

GETOPT="gnugetopt"
SHRED="rm -P -f"
