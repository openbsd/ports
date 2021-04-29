# $OpenBSD: Makefile,v 1.5 2021/04/29 18:27:56 cwen Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0014
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
