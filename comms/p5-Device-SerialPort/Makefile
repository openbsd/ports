# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:23 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.003001
REVISION=	2
CATEGORIES=	comms
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ARGS= TESTPORT=/dev/cuaa
.endif

.include <bsd.port.mk>
