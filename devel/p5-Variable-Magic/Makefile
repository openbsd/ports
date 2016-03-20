# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:41 naddy Exp $

COMMENT =	associate user-defined magic to variables from Perl

MODULES =	cpan
DISTNAME =	Variable-Magic-0.59
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	perl

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
