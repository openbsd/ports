# $OpenBSD: Makefile,v 1.27 2019/07/12 20:45:14 sthen Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.62
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
