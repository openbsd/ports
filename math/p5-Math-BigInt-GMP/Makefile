# $OpenBSD: Makefile,v 1.15 2014/06/14 23:25:41 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME=	Math-BigInt-GMP-1.24
REVISION=	3
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=6

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
