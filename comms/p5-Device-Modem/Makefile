# $OpenBSD: Makefile,v 1.16 2020/02/14 12:11:56 benoit Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME =	Device-Modem-1.57
CATEGORIES=	comms

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
