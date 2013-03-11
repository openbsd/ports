# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:50 espie Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.69
REVISION=	0
CATEGORIES=	net
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	net/p5-Business-PayPal \
		www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
