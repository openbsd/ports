# $OpenBSD: Makefile,v 1.1.1.1 2011/04/03 17:16:13 jasper Exp $

COMMENT=	OO interface to the eBay API

DISTNAME=	Object-eBay-0.5.0
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		cpan
CONFIGURE_STYLE=	modbuild

USE_GROFF=		Yes

RUN_DEPENDS=		devel/p5-Class-Std \
			devel/p5-DateTime \
			net/p5-Net-eBay

.include <bsd.port.mk>
