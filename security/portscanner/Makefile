# $OpenBSD: Makefile,v 1.1.1.1 1999/03/12 17:04:26 brad Exp $
# $FreeBSD: Makefile,v 1.5 1999/01/26 22:19:07 billf Exp $

DISTNAME=	PortScanner-1.0
PKGNAME=	portscanner-1.0
CATEGORIES=	security net
MASTER_SITES=	http://www.ameth.org/~veilleux/ \
		http://www.FreeBSD.org/~billf/

MAINTAINER=	brad@openbsd.org

NO_WRKSUBDIR=	yes

do-build:

	@ ${CC} -o ${WRKSRC}/portscanner ${CFLAGS} ${WRKSRC}/portscanner.c

do-install:

	@ ${INSTALL_PROGRAM} ${WRKSRC}/portscanner ${PREFIX}/bin

.include <bsd.port.mk>
