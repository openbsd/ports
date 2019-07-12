# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:05 sthen Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	1
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
