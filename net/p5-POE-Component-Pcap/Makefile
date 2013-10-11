# $OpenBSD: Makefile,v 1.10 2013/10/11 23:50:29 naddy Exp $

COMMENT=	POE interface to Net::Pcap

MODULES=	cpan
DISTNAME=	POE-Component-Pcap-0.04
REVISION=	2
CATEGORIES=	net

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-Pcap \
		net/p5-NetPacket

# test requires root privileges and a network connection
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
