# $OpenBSD: Makefile,v 1.7 2012/03/31 10:16:52 sebastia Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.5.5
REVISION =	0
DISTNAME =	WebServices-${VERSION}
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

NO_REGRESS =	No
do-regress:
	cd ${WRKSRC}/tests/ && LD_LIBRARY_PATH=../obj ./test

.include <bsd.port.mk>
