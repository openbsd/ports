# $OpenBSD: Makefile,v 1.9 2015/07/18 15:31:17 jasper Exp $

COMMENT=	RFC 2217 compliant serial port redirector

DISTNAME=	sredird-2.2.2
REVISION=	2
CATEGORIES=	comms

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	http://www.ibiblio.org/pub/Linux/system/serial/

NO_TEST=	Yes

pre-build:
	@sed -i "s,%%LOCALBASE%%,${LOCALBASE},g" ${WRKSRC}/sredird.8

do-build:
	${CC} ${CFLAGS} -Wall -o ${WRKSRC}/sredird ${WRKSRC}/sredird.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sredird ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/sredird.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
