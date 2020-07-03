# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:37 sthen Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	NetPacket-0.04
REVISION=	4
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	net/p5-Net-Pcap

NO_TEST=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' -delete

.include <bsd.port.mk>
