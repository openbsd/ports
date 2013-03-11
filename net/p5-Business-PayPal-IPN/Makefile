# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:50 espie Exp $

COMMENT=	extension that implements PayPal IPN v1.5

DISTNAME=	Business-PayPal-IPN-1.94
REVISION=	0
CATEGORIES=	net
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	security/p5-Net_SSLeay \
		www/p5-libwww

NO_TEST=	Yes

.include <bsd.port.mk>
