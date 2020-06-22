# $OpenBSD: Makefile,v 1.1.1.1 2020/06/22 11:39:24 landry Exp $

COMMENT	=	ultra fast, simple, secure, standards compliant web server
PKGNAME =	${DISTNAME:L}
CATEGORIES =	www

GH_ACCOUNT =	uNetworking
GH_PROJECT =	uWebSockets
GH_TAGNAME =	v18.4.0

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	net/usockets

# Header-only library
NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/uWebSockets/f2
	${INSTALL_DATA} ${WRKSRC}/src/*.h ${PREFIX}/include/uWebSockets
	${INSTALL_DATA} ${WRKSRC}/src/f2/*.hpp \
		${PREFIX}/include/uWebSockets/f2

.include <bsd.port.mk>
