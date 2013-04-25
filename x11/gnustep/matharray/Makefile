# $OpenBSD: Makefile,v 1.4 2013/04/25 16:40:11 sebastia Exp $

COMMENT =	GNUstep library to manipulate matrices

VERSION =	1.2
DISTNAME =	MathArray-${VERSION}
REVISION =	2
PKGNAME =	gnustep-matharray-${VERSION}
CATEGORIES =	math
SHARED_LIBS +=  MathArray	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/MathArray
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

CONFIGURE_STYLE +=	gnu
MAKE_FLAGS +=	libMathArray_INTERFACE_VERSION=${LIBMathArray_VERSION}

.include <bsd.port.mk>
