# $OpenBSD: Makefile,v 1.9 2000/02/10 23:14:33 espie Exp $
# $FreeBSD: Makefile,v 1.2 1997/11/10 11:33:04 asami Exp $

DISTNAME=	tcpshow-1.74
CATEGORIES=	net security
MASTER_SITES=	http://www.freebsd.org/~obrien/
DISTFILES=	tcpshow.c tcpshow.1
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	cp	
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= .

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -DNOETHERNAMES -o tcpshow tcpshow.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
