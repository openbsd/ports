# $OpenBSD: Makefile,v 1.10 2014/05/22 17:55:19 sebastia Exp $

COMMENT =	GNUstep webserver framework

VERSION =	1.5.1
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
