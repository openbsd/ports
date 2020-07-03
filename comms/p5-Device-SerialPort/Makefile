# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:31 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	4
CATEGORIES=	comms
MODULES=	cpan

# Artistic
PERMIT_PACKAGE=	Yes
CONFIGURE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
