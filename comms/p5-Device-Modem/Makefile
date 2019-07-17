# $OpenBSD: Makefile,v 1.15 2019/07/17 14:49:20 danj Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.56
CATEGORIES=	comms
REVISION=	0

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
