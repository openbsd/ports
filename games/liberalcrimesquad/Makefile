# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:20 sthen Exp $

V =		4.10.0
COMMENT =	politics and government game with liberal bias
DISTNAME =	liberalcrimesquad-${V}{v${V}}
PKGNAME =	liberalcrimesquad-${V}
CATEGORIES =	games
REVISION =	2

HOMEPAGE =	http://lcs.wikidot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses iconv m

MASTER_SITES =	https://github.com/Kamal-Sadek/Liberal-Crime-Squad/archive/

# C++11
COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	converters/libiconv

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/Liberal-Crime-Squad-${V}

.include <bsd.port.mk>
