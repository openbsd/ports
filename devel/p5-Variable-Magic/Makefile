# $OpenBSD: Makefile,v 1.24 2017/01/25 13:14:44 benoit Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.61
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
