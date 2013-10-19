# $OpenBSD: Makefile,v 1.6 2013/10/19 13:25:02 sebastia Exp $

COMMENT =	GNUstep library to manipulate matrices

VERSION =	1.3
REVISION =	0
DISTNAME =	MathArray-${VERSION}
PKGNAME =	gnustep-matharray-${VERSION}
CATEGORIES =	math
SHARED_LIBS +=  MathArray	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/MathArray
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

WANTLIB += 		pthread
MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

CONFIGURE_STYLE +=	gnu
MAKE_FLAGS +=	libMathArray_INTERFACE_VERSION=${LIBMathArray_VERSION}

.include <bsd.port.mk>
