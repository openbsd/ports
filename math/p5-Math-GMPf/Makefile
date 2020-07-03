# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:28 sthen Exp $

COMMENT =	perl interface to GMP floating point functions

MODULES =	cpan
DISTNAME =	Math-GMPf-0.43
CATEGORIES =	math
REVISION =	0

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
