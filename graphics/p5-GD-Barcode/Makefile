# $OpenBSD: Makefile,v 1.15 2019/11/03 14:07:43 jasper Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	2
CATEGORIES=	graphics

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
