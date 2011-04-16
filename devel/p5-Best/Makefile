# $OpenBSD: Makefile,v 1.5 2011/04/16 11:10:03 simon Exp $

COMMENT =	fallbackable module loader

MODULES =	cpan
DISTNAME =	Best-0.12
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	GAAL

BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
