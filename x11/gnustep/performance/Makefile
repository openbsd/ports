# $OpenBSD: Makefile,v 1.5 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	GNUstep performance library

VERSION =	0.3.2
DISTNAME =	Performance-${VERSION}
REVISION =	2
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
