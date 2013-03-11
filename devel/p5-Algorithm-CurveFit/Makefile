# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:12 espie Exp $

COMMENT =	nonlinear least squares curve fitting

DISTNAME =	Algorithm-CurveFit-1.05
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	math/p5-Math-MatrixReal \
		math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
