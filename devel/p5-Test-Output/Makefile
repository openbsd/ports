# $OpenBSD: Makefile,v 1.16 2021/03/20 12:59:56 bluhm Exp $

COMMENT = 	test output of other modules

DISTNAME =	Test-Output-1.033

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		sysutils/p5-Capture-Tiny>=0.17
TEST_DEPENDS =		devel/p5-Test-Pod>=1.14 \
			devel/p5-Test-Pod-Coverage>=1.04

PKG_ARCH =		*

.include <bsd.port.mk>
