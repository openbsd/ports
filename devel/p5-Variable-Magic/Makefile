# $OpenBSD: Makefile,v 1.28 2020/07/03 21:45:19 sthen Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.62
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
