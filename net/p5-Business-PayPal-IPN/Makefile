# $OpenBSD: Makefile,v 1.5 2013/10/11 23:50:22 naddy Exp $

COMMENT=	extension that implements PayPal IPN v1.5

DISTNAME=	Business-PayPal-IPN-1.94
REVISION=	0
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	security/p5-Net_SSLeay \
		www/p5-libwww

NO_TEST=	Yes

.include <bsd.port.mk>
