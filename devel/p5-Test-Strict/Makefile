# $OpenBSD: Makefile,v 1.6 2013/05/13 14:56:42 benoit Exp $


COMMENT =	check syntax, presence of use strict; and test coverage

MODULES =	cpan
DISTNAME =	Test-Strict-0.22
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Cover

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
