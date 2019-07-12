# $OpenBSD: Makefile,v 1.7 2019/07/12 21:02:24 sthen Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.70
CATEGORIES=	net

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	net/p5-Business-PayPal \
		www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
