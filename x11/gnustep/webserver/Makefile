COMMENT =	GNUstep webserver framework

VERSION =	1.6.0
DISTNAME =	WebServer-${VERSION}
PKGNAME =	gnustep-webserver-${VERSION}
REVISION =	0

SHARED_LIBS +=  WebServer	2.2

CATEGORIES =	www

HOMEPAGE =	http://wiki.gnustep.org/index.php/WebServer

SITES =		${SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB +=		Performance pthread
LIB_DEPENDS +=		x11/gnustep/performance

MAKE_FLAGS +=	WebServer_INTERFACE_VERSION=${LIBWebServer_VERSION}

.include <bsd.port.mk>
