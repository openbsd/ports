# $OpenBSD: Makefile,v 1.2 2011/08/26 08:09:01 espie Exp $

COMMENT =	GNUstep webservices framework

VERSION =	0.5.3
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
REVISION =	0
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB += 		Performance
LIB_DEPENDS =		x11/gnustep/performance
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	WebServices_INTERFACE_VERSION=${LIBWebServices_VERSION}

.include <bsd.port.mk>
