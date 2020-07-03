# $OpenBSD: Makefile,v 1.6 2020/07/03 21:46:04 sthen Exp $

COMMENT=	OO interface to the eBay API

DISTNAME=	Object-eBay-0.5.0
CATEGORIES=	www
REVISION=	0

# perl
PERMIT_PACKAGE =	Yes

MODULES=		cpan
PKG_ARCH=		*
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Std \
			devel/p5-DateTime \
			net/p5-Net-eBay

.include <bsd.port.mk>
