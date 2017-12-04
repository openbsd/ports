# $OpenBSD: Makefile,v 1.26 2017/12/04 06:47:06 benoit Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.62
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
