# $OpenBSD: Makefile,v 1.2 2020/06/29 14:31:55 sthen Exp $

COMMENT	=	ultra fast, simple, secure, standards compliant web server
PKGNAME =	${DISTNAME:L}
CATEGORIES =	www

GH_ACCOUNT =	uNetworking
GH_PROJECT =	uWebSockets
GH_TAGNAME =	v18.6.0

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
