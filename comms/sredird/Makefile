# $OpenBSD: Makefile,v 1.7 2013/04/27 15:44:20 ajacoutot Exp $

COMMENT=	RFC 2217 compliant serial port redirector

DISTNAME=	sredird-2.2.2
REVISION=	1
CATEGORIES=	comms

MAINTAINER=	Alexey E. Suslikov <alexey.suslikov@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	http://www.ibiblio.org/pub/Linux/system/serial/

USE_GROFF =	Yes
NO_TEST=	Yes

pre-build:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g" ${WRKSRC}/sredird.8

do-build:
	${CC} ${CFLAGS} -Wall -o ${WRKSRC}/sredird ${WRKSRC}/sredird.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sredird ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/sredird.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
