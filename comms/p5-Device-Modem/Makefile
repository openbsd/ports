# $OpenBSD: Makefile,v 1.9 2010/11/26 07:08:44 espie Exp $

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

USE_GROFF =	Yes
BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
