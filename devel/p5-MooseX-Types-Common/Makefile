# $OpenBSD: Makefile,v 1.9 2019/05/19 19:58:51 danj Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-Common-0.001014
CATEGORIES=		devel
REVISION=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild tiny

RUN_DEPENDS=		devel/p5-MooseX-Types
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
