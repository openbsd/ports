# $OpenBSD: Makefile,v 1.19 2018/10/04 12:12:13 benoit Exp $

COMMENT =	check syntax, presence of use strict; and test coverage

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Strict-0.47
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Cover
TEST_DEPENDS =	devel/p5-IO-stringy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
