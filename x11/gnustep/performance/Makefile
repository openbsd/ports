COMMENT =	GNUstep performance library

VERSION =	0.6.0
DISTNAME =	Performance-${VERSION}
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.3
REVISION =	0

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
SITES =		${SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB =		pthread
MODGNUSTEP_NEEDS_GUI = No
MODGNUSTEP_NEEDS_BACK = No

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
