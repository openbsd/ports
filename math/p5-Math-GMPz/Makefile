# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:45 sthen Exp $

COMMENT =	perl interface to GMP integer functions

MODULES =	cpan
DISTNAME =	Math-GMPz-0.48
CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

MAINTAINER = 	Steven Mestdagh <steven@openbsd.org>

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	math/p5-Math-BigInt-GMP \
		math/p5-Math-GMPf

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
