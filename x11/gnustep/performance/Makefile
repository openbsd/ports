# $OpenBSD: Makefile,v 1.4 2012/08/22 07:15:52 sebastia Exp $

COMMENT =	GNUstep performance library

VERSION =	0.3.2
DISTNAME =	Performance-${VERSION}
REVISION =	1
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
