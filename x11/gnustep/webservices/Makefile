# $OpenBSD: Makefile,v 1.12 2013/10/19 13:25:05 sebastia Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.5.10
REVISION =	0
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.2

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB += 		Performance
LIB_DEPENDS =		x11/gnustep/performance
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	WebServices_INTERFACE_VERSION=${LIBWebServices_VERSION}

NO_TEST =	No
do-test:
	cd ${WRKSRC}/tests/ && LD_LIBRARY_PATH=../obj ./test

.include <bsd.port.mk>
