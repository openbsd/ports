# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:47 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.56
CATEGORIES=	comms

MODULES=	cpan
PKG_ARCH=	*

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
