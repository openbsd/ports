# $OpenBSD: Makefile,v 1.3 2020/06/15 11:43:22 cwen Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0013
CATEGORIES =		devel

MAINTAINER =		Charlene Wendling <cwen@openbsd.org>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
