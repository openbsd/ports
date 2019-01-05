# $OpenBSD: Makefile,v 1.1.1.1 2019/01/05 10:50:38 steven Exp $

COMMENT =		forces the unavailability of specified Perl modules

DISTNAME =		Devel-Hide-0.0010
CATEGORIES =		devel

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

MODULES =		cpan
PKG_ARCH =		*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
