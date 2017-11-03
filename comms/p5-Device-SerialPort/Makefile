# $OpenBSD: Makefile,v 1.17 2017/11/03 11:25:44 espie Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	2
CATEGORIES=	comms
MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
CONFIGURE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
