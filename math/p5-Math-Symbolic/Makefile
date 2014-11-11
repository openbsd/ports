# $OpenBSD: Makefile,v 1.7 2014/11/11 06:56:38 benoit Exp $

COMMENT =	symbolic calculations for Perl
DISTNAME =	Math-Symbolic-0.612
CATEGORIES =	math

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	devel/p5-Parse-RecDescent

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
