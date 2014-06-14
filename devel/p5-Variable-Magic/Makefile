# $OpenBSD: Makefile,v 1.16 2014/06/14 23:24:59 sthen Exp $

COMMENT =	associate user-defined magic to variables from Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Variable-Magic-0.53
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
