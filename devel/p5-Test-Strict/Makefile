# $OpenBSD: Makefile,v 1.11 2015/10/30 11:59:39 benoit Exp $

COMMENT =	check syntax, presence of use strict; and test coverage

MODULES =	cpan
DISTNAME =	Test-Strict-0.31
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Cover
TEST_DEPENDS =	devel/p5-IO-stringy

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
