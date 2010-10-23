# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 16:05:53 jasper Exp $

COMMENT=	PayPal API

DISTNAME=	Business-PayPal-API-0.69
CATEGORIES=	net
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

RUN_DEPENDS=	::net/p5-Business-PayPal \
		::www/p5-SOAP-Lite

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
