# $OpenBSD: Makefile,v 1.13 2015/09/21 07:32:47 sebastia Exp $

COMMENT =	GNUstep webserver framework

VERSION =	1.5.4
DISTNAME =	WebServer-${VERSION}
PKGNAME =	gnustep-webserver-${VERSION}

SHARED_LIBS +=  WebServer	2.1

CATEGORIES =	www

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServer

MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB +=		Performance pthread
LIB_DEPENDS +=		x11/gnustep/performance

MAKE_FLAGS +=	WebServer_INTERFACE_VERSION=${LIBWebServer_VERSION}

.include <bsd.port.mk>
