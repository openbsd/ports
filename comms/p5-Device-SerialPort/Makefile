# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:07 naddy Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	2
CATEGORIES=	comms
MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

.if ${MACHINE_ARCH} == "sparc"
CONFIGURE_ARGS= TESTPORT=/dev/cuaa
.endif

.include <bsd.port.mk>
