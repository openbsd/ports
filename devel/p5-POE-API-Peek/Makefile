# $OpenBSD: Makefile,v 1.8 2018/12/02 01:01:32 afresh1 Exp $

COMMENT=		peek into the internals of a running POE environment

DISTNAME=		POE-API-Peek-2.20

CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-Size \
			devel/p5-POE>=1.311
TEST_DEPENDS=		devel/p5-Test-Distribution \
			devel/p5-Test-NoWarnings \

MAKE_ENV=		TEST_POD=1
TEST_ENV=		RELEASE_TESTING=1

.include <bsd.port.mk>
