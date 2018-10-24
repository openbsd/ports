# $OpenBSD: Makefile,v 1.15 2018/10/24 14:28:03 sthen Exp $

V =		4.10.0
COMMENT =	politics and government game with liberal bias
DISTNAME =	liberalcrimesquad-${V}{v${V}}
PKGNAME =	liberalcrimesquad-${V}
CATEGORIES =	games
REVISION =	2

HOMEPAGE =	http://lcs.wikidot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses iconv m

MASTER_SITES =	https://github.com/Kamal-Sadek/Liberal-Crime-Squad/archive/

# C++11
COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	converters/libiconv

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/Liberal-Crime-Squad-${V}

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
