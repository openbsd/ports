# OpenBSD  makefile for: 	  tcpshow
# Version required:     	  1.0
# Date created:			  July 11 1998
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/07/12 04:46:53 angelos Exp $
#

DISTNAME=	tcpshow-1.0
CATEGORIES=	net security
MASTER_SITES=	http://www.cs.berkeley.edu/~daw/mike/
DISTFILES=	tcpshow.c tcpshow.1

MAINTAINER=     angelos@openbsd.org

NO_WRKSUBDIR=	yes
MAN1=		tcpshow.1

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.c ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.1 ${WRKDIR}

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -o tcpshow tcpshow.c)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
