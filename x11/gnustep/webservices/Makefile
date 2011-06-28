# $OpenBSD: Makefile,v 1.1.1.1 2011/06/28 15:51:18 sebastia Exp $

COMMENT =	GNUstep webservices library

VERSION =	0.5.3
DISTNAME =	WebServices-${VERSION}
PKGNAME =	gnustep-webservices-${VERSION}
CATEGORIES =	www
SHARED_LIBS +=  WebServices	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServices
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
WANTLIB +=		Performance
LIB_DEPENDS =		x11/gnustep/performance

MAKE_FLAGS +=	WebServices_INTERFACE_VERSION=${LIBWebServices_VERSION}

.include <bsd.port.mk>
