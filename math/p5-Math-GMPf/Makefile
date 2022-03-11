COMMENT =	perl interface to GMP floating point functions

MODULES =	cpan
DISTNAME =	Math-GMPf-0.44
CATEGORIES =	math

# Perl
PERMIT_PACKAGE=	Yes

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	math/p5-Math-GMPz

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
