# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:51 sthen Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0010
CATEGORIES =		devel

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
