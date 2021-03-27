# $OpenBSD: Makefile,v 1.12 2021/03/27 11:22:59 bluhm Exp $

COMMENT =	test file attributes

DISTNAME =	Test-File-1.448

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
