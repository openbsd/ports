# $OpenBSD: Makefile,v 1.6 2010/10/18 18:36:55 espie Exp $

COMMENT=	POE interface to Net::Pcap

MODULES=	cpan
DISTNAME=	POE-Component-Pcap-0.04
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

# Artitistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-Net-Pcap \
		::net/p5-NetPacket

# regress requires root privileges and a network connection
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
