# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:50 naddy Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.70
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	net/p5-Business-PayPal \
		www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
