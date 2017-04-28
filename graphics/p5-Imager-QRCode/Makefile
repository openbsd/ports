# $OpenBSD: Makefile,v 1.8 2017/04/28 18:20:43 ajacoutot Exp $

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.035
CATEGORIES=		graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		graphics/p5-Imager
RUN_DEPENDS=		graphics/p5-Imager

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
