# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.51
REVISION=	0
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
