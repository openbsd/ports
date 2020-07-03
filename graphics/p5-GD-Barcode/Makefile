# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:22 sthen Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	3
CATEGORIES=	graphics

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
