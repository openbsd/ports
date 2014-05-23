# $OpenBSD: Makefile,v 1.8 2014/05/23 22:27:26 kili Exp $

COMMENT =	GNUstep library to manipulate matrices

VERSION =	1.3
REVISION =	1
DISTNAME =	MathArray-${VERSION}
PKGNAME =	gnustep-matharray-${VERSION}
CATEGORIES =	math
SHARED_LIBS +=  MathArray	0.0

HOMEPAGE =	http://wiki.gnustep.org/index.php/MathArray
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=contrib/}

WANTLIB += 		pthread
MODULES =		x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes

CONFIGURE_STYLE +=	gnu
MAKE_FLAGS +=	libMathArray_INTERFACE_VERSION=${LIBMathArray_VERSION}

.include <bsd.port.mk>
