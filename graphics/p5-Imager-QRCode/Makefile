# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:07 sthen Exp $

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.035
CATEGORIES=		graphics

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		graphics/p5-Imager
RUN_DEPENDS=		graphics/p5-Imager

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
