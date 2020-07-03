# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:31 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME =	Device-Modem-1.57
CATEGORIES=	comms
REVISION =	0

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
