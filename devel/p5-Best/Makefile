# $OpenBSD: Makefile,v 1.7 2014/11/13 09:08:10 benoit Exp $

COMMENT =	fallbackable module loader

MODULES =	cpan
DISTNAME =	Best-0.15
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	GAAL

BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
