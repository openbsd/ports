# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:00 sthen Exp $

COMMENT=		find and use installed modules in a (sub)category

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Module-Find-0.13
CATEGORIES=		devel
REVISION=		0

# Artistic
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MAKE_ENV=		TEST_POD=Yes

TEST_DEPENDS=		devel/p5-Test-CPAN-Meta

.include <bsd.port.mk>
