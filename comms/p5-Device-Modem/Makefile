# $OpenBSD: Makefile,v 1.11 2012/05/17 08:56:47 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.56
CATEGORIES=	comms

MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
