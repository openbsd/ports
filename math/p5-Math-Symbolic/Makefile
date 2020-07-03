# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:29 sthen Exp $

COMMENT =	symbolic calculations for Perl
DISTNAME =	Math-Symbolic-0.612
CATEGORIES =	math
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	devel/p5-Parse-RecDescent

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
