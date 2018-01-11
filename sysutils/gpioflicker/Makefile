# $OpenBSD: Makefile,v 1.8 2018/01/11 19:27:10 rpe Exp $

COMMENT=		flashes gpio led whenever pf logs to pflog0

DISTNAME=		gpioflicker-0.3
CATEGORIES=		sysutils
REVISION=		0

HOMEPAGE=		http://www.pro-bono-publico.de/openbsd/gpio/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util

MASTER_SITES=		${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gpioflicker ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/gpioflicker.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
