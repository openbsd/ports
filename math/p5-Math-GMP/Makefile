# $OpenBSD: Makefile,v 1.34 2017/04/30 09:10:00 benoit Exp $

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME =	Math-GMP-2.14
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =		devel/gmp

BUILD_DEPENDS =		devel/p5-Devel-CheckLib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
