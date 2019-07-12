# $OpenBSD: Makefile,v 1.18 2019/07/12 20:43:47 sthen Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-SerialPort-1.04
EPOCH=		0
REVISION=	2
CATEGORIES=	comms
MODULES=	cpan

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes
CONFIGURE_ENV +=	CC='${CC}'

WANTLIB += c perl

.include <bsd.port.mk>
