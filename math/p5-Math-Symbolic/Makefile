# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:56 espie Exp $

COMMENT =	symbolic calculations for Perl
DISTNAME =	Math-Symbolic-0.606
CATEGORIES =	math
MAINTAINER =	Markus Bergkvist <markus.bergkvist@telia.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	devel/p5-Parse-RecDescent

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
