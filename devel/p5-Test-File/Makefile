# $OpenBSD: Makefile,v 1.11 2021/03/19 21:12:56 bluhm Exp $

COMMENT =	test file attributes

DISTNAME =	Test-File-1.447

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE	=	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Test-Manifest
TEST_DEPENDS =		devel/p5-Test-utf8 \
			devel/p5-Test-Pod>=1.00 \
			devel/p5-Test-Pod-Coverage>=1.00

PKG_ARCH =		*

.include <bsd.port.mk>
