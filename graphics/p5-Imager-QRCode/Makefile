# $OpenBSD: Makefile,v 1.6 2015/07/16 23:57:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.034
CATEGORIES=		graphics
REVISION=		1

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
