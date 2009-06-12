# $OpenBSD: Makefile,v 1.2 2009/06/12 16:58:07 jasper Exp $

COMMENT =	symbolic calculations for Perl
DISTNAME =	Math-Symbolic-0.603
CATEGORIES =	math
HOMEPAGE =	http://search.cpan.org/~smueller/Math-Symbolic/
MAINTAINER =	Markus Bergkvist <markus.bergkvist@telia.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	::devel/p5-Parse-RecDescent

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
