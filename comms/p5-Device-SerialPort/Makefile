# $OpenBSD: Makefile,v 1.12 2013/03/11 01:30:26 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	0
CATEGORIES=	comms
MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ARGS= TESTPORT=/dev/cuaa
.endif

.include <bsd.port.mk>
