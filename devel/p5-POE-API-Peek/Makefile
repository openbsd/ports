# $OpenBSD: Makefile,v 1.6 2013/10/11 23:49:00 naddy Exp $

COMMENT=		peek into the internals of a running POE environment

DISTNAME=		POE-API-Peek-1.34
REVISION=		0

CATEGORIES=		devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Devel-Size \
			devel/p5-POE
TEST_DEPENDS=	devel/p5-Test-Distribution \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
