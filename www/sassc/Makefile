# $OpenBSD: Makefile,v 1.7 2019/11/13 19:38:39 jasper Exp $

COMMENT =		libsass command line driver

GH_ACCOUNT =		sass
GH_PROJECT =		sassc
GH_TAGNAME =		3.6.1
REVISION =		0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m sass

COMPILER =		base-clang ports-gcc base-gcc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		www/libsass

AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/"

NO_TEST =		Yes

# Bypass the need to have libsass sources present.
do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} BUILD=shared

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sassc ${PREFIX}/bin/

.include <bsd.port.mk>
