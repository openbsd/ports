# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:57 naddy Exp $

COMMENT=	POE interface to Net::Pcap

MODULES=	cpan
PKG_ARCH=	*
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
