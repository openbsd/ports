# $OpenBSD: Makefile,v 1.2 2018/04/24 12:27:08 jasper Exp $

COMMENT =		libsass command line driver

GH_ACCOUNT =		sass
GH_PROJECT =		sassc
GH_TAGNAME =		3.5.0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m sass

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
LIB_DEPENDS =		www/libsass

AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/"

NO_TEST =		Yes

post-patch:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -i

# Bypass the need to have libsass sources present.
do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} BUILD=shared

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sassc ${PREFIX}/bin/

.include <bsd.port.mk>
