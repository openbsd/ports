# $OpenBSD: Makefile,v 1.25 2017/09/23 10:51:07 sthen Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.61
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
