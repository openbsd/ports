# $OpenBSD: Makefile,v 1.12 2016/03/05 16:04:09 pascal Exp $

COMMENT =	GNUstep performance library

VERSION =	0.5.0
REVISION =	2
DISTNAME =	Performance-${VERSION}
PKGNAME =	gnustep-performance-${VERSION}
CATEGORIES =	devel
SHARED_LIBS +=  Performance               0.2

HOMEPAGE =	http://wiki.gnustep.org/index.php/Performance
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
WANTLIB =		pthread
MODGNUSTEP_IS_FRAMEWORK = Yes

MAKE_FLAGS +=	Performance_INTERFACE_VERSION=${LIBPerformance_VERSION}

.include <bsd.port.mk>
