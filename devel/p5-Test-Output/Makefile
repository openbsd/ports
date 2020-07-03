# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:15 sthen Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Output-1.031
REVISION =	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
