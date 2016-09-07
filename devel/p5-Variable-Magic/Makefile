# $OpenBSD: Makefile,v 1.23 2016/09/07 06:41:45 benoit Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.60
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
