# $OpenBSD: Makefile,v 1.6 2021/10/20 05:54:15 benoit Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0015
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
