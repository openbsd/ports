# $OpenBSD: Makefile,v 1.5 2008/10/02 20:32:18 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.003001
PKGNAME=	p5-${DISTNAME}p0
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
