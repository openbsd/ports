# $OpenBSD: Makefile,v 1.1.1.1 2021/05/27 16:12:16 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.12
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++11
COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man

WRKDIST =		${WRKDIR}/${DISTNAME}.20200827.8d3a16e

# XXX investigate
# TOTAL: 29, PASS: 28, FAIL: build-id.sh
TEST_TARGET =		check

.include <bsd.port.mk>
