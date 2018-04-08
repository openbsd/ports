# $OpenBSD: Makefile,v 1.10 2018/04/08 19:17:57 bcallah Exp $

COMMENT =	politics and government game with liberal bias
DISTNAME =	liberalcrimesquad-4.07.0
CATEGORIES =	games
REVISION =	4

HOMEPAGE =	http://lcs.wikidot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m ncurses ${COMPILER_LIBCXX}

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

LIB_DEPENDS =	converters/libiconv

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

MAKE_FLAGS =	CXXFLAGS="${CXXFLAGS} -std=c++03"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
