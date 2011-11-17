# $OpenBSD: Makefile,v 1.1.1.1 2011/11/17 23:42:51 sebastia Exp $

COMMENT =	GNUstep library to manipulate matrices

VERSION =	1.2
DISTNAME =	MathArray-${VERSION}
PKGNAME =	gnustep-matharray-${VERSION}
CATEGORIES =	math
SHARED_LIBS +=  MathArray	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/MathArray
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No

MAKE_FLAGS +=	libMathArray_INTERFACE_VERSION=${LIBMathArray_VERSION}

.include <bsd.port.mk>
