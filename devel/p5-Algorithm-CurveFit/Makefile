# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT =	nonlinear least squares curve fitting

DISTNAME =	Algorithm-CurveFit-1.04
REVISION =	1
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
USE_GROFF =	Yes
RUN_DEPENDS =	math/p5-Math-MatrixReal \
		math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
