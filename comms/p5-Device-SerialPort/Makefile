# $OpenBSD: Makefile,v 1.19 2019/07/17 14:49:20 danj Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	3
CATEGORIES=	comms
MODULES=	cpan

# Artistic
PERMIT_PACKAGE=	Yes
CONFIGURE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
