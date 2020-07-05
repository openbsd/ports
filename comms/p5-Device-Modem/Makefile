# $OpenBSD: Makefile,v 1.18 2020/07/05 14:22:23 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME =	Device-Modem-1.59
CATEGORIES=	comms

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
