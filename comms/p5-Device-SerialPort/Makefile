# $OpenBSD: Makefile,v 1.13 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	1
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
