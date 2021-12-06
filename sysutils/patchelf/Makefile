# $OpenBSD: Makefile,v 1.8 2021/12/06 19:26:45 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.14.3
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++17
COMPILER =		base-clang ports-gcc

# XXX 0.13 broke out-of-tree compilation for `contiguous-note-sections' test:
# ld: error: cannot find linker script contiguous-note-sections.ld
SEPARATE_BUILD =	No
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man

# XXX 0.14 broke compilation for `too-many-strtab' and `libtoomanystrtab' tests:
# ld: error: section type mismatch for .shstrtab
# >>> <internal>:(.shstrtab): SHT_STRTAB
# >>> output section .shstrtab: SHT_PROGBITS

# XXX after removing them from `check_PROGRAMS' in ${WRKBUILD}/tests/Makefile:
# TOTAL: 44, PASS: 42, FAIL: 2 (build-id.sh, too-many-strtab.sh)
# build-id.sh expects readelf(1) to understand `.note.gnu.build-id':
# https://github.com/NixOS/patchelf/issues/350
TEST_TARGET =		check

TEST_DEPENDS =		sysutils/coreutils

pre-test:
	# `big-dynstr.c' target in ${WRKBUILD}/tests/Makefile
	ln -sf /usr/local/bin/gseq ${WRKDIR}/bin/seq
	# ${WRKBUILD}/tests/grow-file.sh uses `head -c'
	ln -sf /usr/local/bin/ghead ${WRKDIR}/bin/head

.include <bsd.port.mk>
