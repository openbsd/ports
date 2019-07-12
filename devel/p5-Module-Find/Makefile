# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:59 sthen Exp $

COMMENT=		find and use installed modules in a (sub)category

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Module-Find-0.13
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MAKE_ENV=		TEST_POD=Yes

TEST_DEPENDS=		devel/p5-Test-CPAN-Meta

.include <bsd.port.mk>
