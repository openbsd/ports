# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.003001
REVISION=	0
CATEGORIES=	comms
MODULES=	cpan

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
