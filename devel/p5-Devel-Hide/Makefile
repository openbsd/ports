# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:49 sthen Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0013
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Charlene Wendling <cwen@openbsd.org>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
