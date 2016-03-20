# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:44 naddy Exp $

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.034
CATEGORIES=		graphics
REVISION=		1

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
