# $OpenBSD: Makefile,v 1.1.1.1 2020/08/13 03:02:20 afresh1 Exp $

COMMENT =	utilities related to prime numbers, using GMP
DISTNAME =	Math-Prime-Util-GMP-0.52
CATEGORIES =	math

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
WANTLIB =	perl c m gmp

LIB_DEPENDS =	devel/gmp

# Extend "LIBS" from Makefile.PL,
# not sure how other than to replicate what is in there already
CONFIGURE_ARGS =	INC="-I${LOCALBASE}/include" \
			LIBS="-lm -L${LOCALBASE}/lib -lgmp"

.include <bsd.port.mk>
