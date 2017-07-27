# $OpenBSD: Makefile,v 1.13 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep library to manipulate matrices

VERSION =	1.3
REVISION =	6
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
