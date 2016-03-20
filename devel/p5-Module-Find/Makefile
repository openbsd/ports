# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:27 naddy Exp $

COMMENT=		find and use installed modules in a (sub)category

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Module-Find-0.13
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MAKE_ENV=		TEST_POD=Yes

TEST_DEPENDS=		devel/p5-Test-CPAN-Meta

.include <bsd.port.mk>
