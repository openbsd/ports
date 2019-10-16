# $OpenBSD: Makefile,v 1.19 2019/10/16 13:45:06 ajacoutot Exp $

COMMENT =	GNUstep webserver framework

VERSION =	1.5.5
DISTNAME =	WebServer-${VERSION}
PKGNAME =	gnustep-webserver-${VERSION}
REVISION =	2

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
