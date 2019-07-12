# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:41 sthen Exp $

COMMENT=	POE interface to Net::Pcap

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Pcap-0.04
REVISION=	2
CATEGORIES=	net

# Artitistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-Pcap \
		net/p5-NetPacket

# test requires root privileges and a network connection
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
