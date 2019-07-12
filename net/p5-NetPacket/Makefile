# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:41 sthen Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	NetPacket-0.04
REVISION=	3
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	net/p5-Net-Pcap

NO_TEST=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
