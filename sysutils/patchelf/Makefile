# $OpenBSD: Makefile,v 1.3 2021/11/28 17:34:03 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.14.1
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++17
COMPILER =		base-clang ports-gcc

# XXX 0.13 broke test target:
# ld: error: cannot find linker script contiguous_note_sections.ld
SEPARATE_BUILD =	No
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man

WRKDIST =		${WRKDIR}/${DISTNAME}.19700101.dirty

# XXX investigate
# TOTAL: 34, PASS: 33, FAIL: build-id.sh
TEST_TARGET =		check

.include <bsd.port.mk>
