# $OpenBSD: Makefile,v 1.2 2010/10/03 17:23:41 jasper Exp $

COMMENT =	nonlinear least squares curve fitting

DISTNAME =	Algorithm-CurveFit-1.04
REVISION =	0
CATEGORIES =	devel
HOMEPAGE =	http://search.cpan.org/~smueller/Algorithm-CurveFit/
MAINTAINER =	Markus Bergkvist <markus.bergkvist@telia.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	::math/p5-Math-MatrixReal \
		::math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
