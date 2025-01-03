COMMENT =	backend library for Math::BigInt based on GMP

DISTNAME =	Math-BigInt-GMP-1.6011

CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c gmp>=6 perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Devel-CheckLib
LIB_DEPENDS =		devel/gmp

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	rm -r -- ${WRKDIST}/inc

.include <bsd.port.mk>
