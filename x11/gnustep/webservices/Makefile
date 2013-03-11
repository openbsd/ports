# $OpenBSD: Makefile,v 1.10 2013/03/11 11:46:12 espie Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.5.5
DISTNAME =	WebServices-${VERSION}
REVISION =	1
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.1

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
