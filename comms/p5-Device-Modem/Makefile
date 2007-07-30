# $OpenBSD: Makefile,v 1.4 2007/07/30 18:13:53 simon Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.48
CATEGORIES=	comms

MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Device-SerialPort->=1:comms/p5-Device-SerialPort

.include <bsd.port.mk>
