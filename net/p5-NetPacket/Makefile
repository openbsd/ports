# $OpenBSD: Makefile,v 1.11 2015/01/21 14:40:10 sthen Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
DISTNAME=	NetPacket-0.04
REVISION=	3
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	net/p5-Net-Pcap

NO_TEST=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
