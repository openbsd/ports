# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:59 sthen Exp $

COMMENT =		temporarily set Config or XSConfig values

DISTNAME =		Mock-Config-0.03
REVISION =		0

CATEGORIES =		devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

PKG_ARCH =		*

CPAN_AUTHOR =		RURBAN

MAKE_ENV +=		RELEASE_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
