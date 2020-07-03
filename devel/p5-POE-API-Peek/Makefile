# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:04 sthen Exp $

COMMENT=		peek into the internals of a running POE environment

DISTNAME=		POE-API-Peek-2.20
REVISION=		0

CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-Size \
			devel/p5-POE>=1.311
TEST_DEPENDS=		devel/p5-Test-Distribution \
			devel/p5-Test-NoWarnings \

MAKE_ENV=		TEST_POD=1
TEST_ENV=		RELEASE_TESTING=1

.include <bsd.port.mk>
