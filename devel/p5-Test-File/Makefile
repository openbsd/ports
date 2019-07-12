# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:09 sthen Exp $

COMMENT=		test file attributes

DISTNAME=		Test-File-1.443
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Test-Manifest
TEST_DEPENDS=		devel/p5-Test-utf8

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
