# $OpenBSD: Makefile,v 1.5 1999/02/25 23:53:08 brad Exp $
# $FreeBSD: Makefile,v 1.2 1997/11/10 11:33:04 asami Exp $

DISTNAME=	tcpshow-1.74
CATEGORIES=	net security
MASTER_SITES=	http://www.freebsd.org/~obrien/

DISTFILES=	tcpshow.c tcpshow.1

MAINTAINER=     form@OpenBSD.ORG

NO_WRKSUBDIR=	yes
MAN1=		tcpshow.1

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.c ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.1 ${WRKDIR}

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -DNOETHERNAMES -o tcpshow tcpshow.c)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
