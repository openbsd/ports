# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:21 naddy Exp $

COMMENT=	OO interface to the eBay API

DISTNAME=	Object-eBay-0.5.0
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		cpan
PKG_ARCH=		*
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Std \
			devel/p5-DateTime \
			net/p5-Net-eBay

.include <bsd.port.mk>
