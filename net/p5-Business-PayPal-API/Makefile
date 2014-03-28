# $OpenBSD: Makefile,v 1.5 2014/03/28 11:36:08 sthen Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.70
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	net/p5-Business-PayPal \
		www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
