# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:23 sthen Exp $

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.035
CATEGORIES=		graphics
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		graphics/p5-Imager
RUN_DEPENDS=		graphics/p5-Imager

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
