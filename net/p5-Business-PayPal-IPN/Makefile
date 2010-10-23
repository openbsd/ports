# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 16:07:43 jasper Exp $

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

RUN_DEPENDS=	::security/p5-Net_SSLeay \
		::www/p5-libwww

NO_REGRESS=	Yes

.include <bsd.port.mk>
