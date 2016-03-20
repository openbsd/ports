# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:48 naddy Exp $

COMMENT =	symbolic calculations for Perl
DISTNAME =	Math-Symbolic-0.612
CATEGORIES =	math

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	devel/p5-Parse-RecDescent

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
