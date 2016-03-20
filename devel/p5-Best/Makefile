# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:13 naddy Exp $

COMMENT =	fallbackable module loader

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Best-0.15
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	GAAL

BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
