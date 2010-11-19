# $OpenBSD: Makefile,v 1.2 2010/11/19 22:31:35 espie Exp $

COMMENT=	extension that implements PayPal IPN v1.5

DISTNAME=	Business-PayPal-IPN-1.94
CATEGORIES=	net
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

RUN_DEPENDS=	security/p5-Net_SSLeay \
		www/p5-libwww

NO_REGRESS=	Yes

.include <bsd.port.mk>
