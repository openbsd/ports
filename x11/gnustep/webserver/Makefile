# $OpenBSD: Makefile,v 1.7 2013/10/19 13:25:05 sebastia Exp $

COMMENT =	GNUstep webserver framework

VERSION =	1.4.6
DISTNAME =	WebServer-${VERSION}
REVISION =	3
PKGNAME =	gnustep-webserver-${VERSION}

SHARED_LIBS +=  WebServer	1.1

CATEGORIES =	www

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServer

MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
WANTLIB +=		Performance
LIB_DEPENDS +=		x11/gnustep/performance

MAKE_FLAGS +=	WebServer_INTERFACE_VERSION=${LIBWebServer_VERSION}

.include <bsd.port.mk>
