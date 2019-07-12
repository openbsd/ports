# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:11 sthen Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Output-1.031
REVISION =	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
