# $OpenBSD: Makefile,v 1.8 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep performance library

VERSION =	0.4.0
DISTNAME =	Performance-${VERSION}
REVISION =	0
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.1

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB =		pthread
MODGNUSTEP_IS_FRAMEWORK = Yes

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
