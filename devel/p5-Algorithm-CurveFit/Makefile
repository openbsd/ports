# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:44 sthen Exp $

COMMENT =	nonlinear least squares curve fitting

DISTNAME =	Algorithm-CurveFit-1.05
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	math/p5-Math-MatrixReal \
		math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
