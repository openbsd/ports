# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:31 sthen Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.70
CATEGORIES=	net
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	net/p5-Business-PayPal \
		www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
