# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:46 espie Exp $

COMMENT=	OO interface to the eBay API

DISTNAME=	Object-eBay-0.5.0
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		cpan
CONFIGURE_STYLE=	modbuild

USE_GROFF=		Yes

RUN_DEPENDS=		devel/p5-Class-Std \
			devel/p5-DateTime \
			net/p5-Net-eBay

.include <bsd.port.mk>
