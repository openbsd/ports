# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:53 espie Exp $

COMMENT=	Perl module for encoding/decoding network traffic

MODULES=	cpan
DISTNAME=	NetPacket-0.04
REVISION=	3
CATEGORIES=	net
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	net/p5-Net-Pcap

NO_TEST=	Yes

post-install:
	@find ${WRKINST} -name '*.orig' | xargs rm

.include <bsd.port.mk>
