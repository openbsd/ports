# $OpenBSD: Makefile,v 1.13 2017/08/01 22:53:11 bluhm Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Output-1.031
REVISION =	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
