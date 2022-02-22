# $OpenBSD: Makefile,v 1.9 2022/02/22 23:21:00 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.14.5
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++17
COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man

# amd64:   TOTAL: 45, PASS: 44, FAIL:  1 (replace-add-needed.sh)
# sparc64: TOTAL: 45, PASS: 32, FAIL: 13 (needs fixes/disabling to run)
TEST_TARGET =		check

.include <bsd.port.mk>
