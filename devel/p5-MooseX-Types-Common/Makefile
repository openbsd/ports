# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:03 sthen Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-Common-0.001014
CATEGORIES=		devel
REVISION=		1

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild tiny

RUN_DEPENDS=		devel/p5-MooseX-Types
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
