# $OpenBSD: Makefile,v 1.1.1.1 2009/06/12 17:06:32 jasper Exp $

COMMENT =	nonlinear least squares curve fitting

DISTNAME =	Algorithm-CurveFit-1.04
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Algorithm-CurveFit
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Algorithm-CurveFit


.include <bsd.port.mk>
