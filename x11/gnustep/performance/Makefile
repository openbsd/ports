# $OpenBSD: Makefile,v 1.7 2013/10/21 08:27:33 sebastia Exp $

COMMENT =	GNUstep performance library

VERSION =	0.4.0
DISTNAME =	Performance-${VERSION}
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB =		pthread
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
