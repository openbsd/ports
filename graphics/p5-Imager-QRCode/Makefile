# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:55 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.033
REVISION=		0
CATEGORIES=		graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
