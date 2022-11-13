COMMENT =	perl interface to GMP integer functions

MODULES =	cpan
DISTNAME =	Math-GMPz-0.55
CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

MAINTAINER = 	Steven Mestdagh <steven@openbsd.org>

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	math/p5-Math-BigInt-GMP \
		math/p5-Math-GMPf \
		devel/p5-Test-Warn

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
