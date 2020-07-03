# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:40 sthen Exp $

COMMENT =	fallbackable module loader

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Best-0.15
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =	GAAL

BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
