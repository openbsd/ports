# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:50 naddy Exp $

COMMENT=	extension that implements PayPal IPN v1.5

DISTNAME=	Business-PayPal-IPN-1.94
REVISION=	0
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/p5-Net_SSLeay \
		www/p5-libwww

NO_TEST=	Yes

.include <bsd.port.mk>
