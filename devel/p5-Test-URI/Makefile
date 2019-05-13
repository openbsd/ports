# $OpenBSD: Makefile,v 1.9 2019/05/13 12:40:14 cwen Exp $

COMMENT =		check Uniform Resource Identifiers

DISTNAME =		Test-URI-1.082
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-URI

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
