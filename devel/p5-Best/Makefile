# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:13 espie Exp $

COMMENT =	fallbackable module loader

MODULES =	cpan
DISTNAME =	Best-0.12
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	GAAL

BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
