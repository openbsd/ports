# $OpenBSD: Makefile,v 1.20 2019/06/27 07:39:08 benoit Exp $

COMMENT =	check syntax, presence of use strict; and test coverage

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Strict-0.52
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Devel-Cover
TEST_DEPENDS =	devel/p5-IO-stringy \
		devel/p5-Test-CheckManifest \
		devel/p5-Test-DistManifest

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
