# $OpenBSD: Makefile,v 1.5 2014/06/14 23:25:21 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.034
CATEGORIES=		graphics
REVISION=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
