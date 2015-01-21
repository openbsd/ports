# $OpenBSD: Makefile,v 1.3 2015/01/21 14:43:33 sthen Exp $

COMMENT=	OO interface to the eBay API

DISTNAME=	Object-eBay-0.5.0
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		cpan
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Class-Std \
			devel/p5-DateTime \
			net/p5-Net-eBay

.include <bsd.port.mk>
