# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:43 naddy Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	1
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
