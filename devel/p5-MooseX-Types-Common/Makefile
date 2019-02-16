# $OpenBSD: Makefile,v 1.8 2019/02/16 18:00:40 cwen Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-Common-0.001014
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild tiny

RUN_DEPENDS=		devel/p5-MooseX-Types
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
