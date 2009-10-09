# $OpenBSD: Makefile,v 1.6 2009/10/09 12:25:25 jasper Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.51
CATEGORIES=	comms

MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Device-SerialPort->=1:comms/p5-Device-SerialPort

.include <bsd.port.mk>
