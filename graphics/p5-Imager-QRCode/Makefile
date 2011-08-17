# $OpenBSD: Makefile,v 1.1.1.1 2011/08/17 19:04:13 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.033
CATEGORIES=		graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
