# $OpenBSD: Makefile,v 1.2 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		generate QR Code with Imager using libqrencode

DISTNAME=		Imager-QRCode-0.033
REVISION=		0
CATEGORIES=		graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/p5-Imager>=0.84

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
