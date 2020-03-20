# $OpenBSD: Makefile,v 1.14 2020/03/20 16:44:26 naddy Exp $

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
	@find ${WRKINST} -name '*.orig' -delete

.include <bsd.port.mk>
