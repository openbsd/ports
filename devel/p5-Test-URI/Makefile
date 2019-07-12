# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:11 sthen Exp $

COMMENT =		check Uniform Resource Identifiers

DISTNAME =		Test-URI-1.082
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# Artistic 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-URI

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
