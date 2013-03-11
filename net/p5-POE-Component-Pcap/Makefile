# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:54 espie Exp $

COMMENT=	POE interface to Net::Pcap

MODULES=	cpan
DISTNAME=	POE-Component-Pcap-0.04
REVISION=	2
CATEGORIES=	net
USE_GROFF =	Yes

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-Pcap \
		net/p5-NetPacket

# test requires root privileges and a network connection
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
