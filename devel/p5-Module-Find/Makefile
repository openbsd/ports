# $OpenBSD: Makefile,v 1.11 2015/11/13 09:30:18 ajacoutot Exp $

COMMENT=		find and use installed modules in a (sub)category

MODULES=		cpan
DISTNAME=		Module-Find-0.13
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MAKE_ENV=		TEST_POD=Yes

TEST_DEPENDS=		devel/p5-Test-CPAN-Meta

.include <bsd.port.mk>
