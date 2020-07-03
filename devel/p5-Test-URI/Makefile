# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:16 sthen Exp $

COMMENT =		check Uniform Resource Identifiers

DISTNAME =		Test-URI-1.082
CATEGORIES =		devel
REVISION =		0

MODULES =		cpan
PKG_ARCH =		*

# Artistic 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-URI

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
