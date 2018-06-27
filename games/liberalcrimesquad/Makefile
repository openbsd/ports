# $OpenBSD: Makefile,v 1.13 2018/06/27 21:03:47 espie Exp $

V =		4.10.0
COMMENT =	politics and government game with liberal bias
DISTNAME =	liberalcrimesquad-${V}{v${V}}
PKGNAME =	liberalcrimesquad-${V}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	http://lcs.wikidot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv m ncurses ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/Kamal-Sadek/Liberal-Crime-Squad/archive/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

LIB_DEPENDS =	converters/libiconv

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

# don't pick up SDL2
CONFIGURE_ENV +=	ac_cv_lib_SDL2_SDL_Init= \
			ac_cv_path_SDL_CONFIG=

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/Liberal-Crime-Squad-${V}

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
