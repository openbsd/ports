# $OpenBSD: Makefile,v 1.6 2000/03/24 22:11:58 espie Exp $
# $FreeBSD: Makefile,v 1.5 1999/01/26 22:19:07 billf Exp $

DISTNAME=	PortScanner-1.0
PKGNAME=	portscanner-1.0
CATEGORIES=	security
NEED_VERSION=	1.191
MASTER_SITES=	http://www.ameth.org/~veilleux/ \
		http://www.FreeBSD.org/~billf/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	@ ${CC} -o ${WRKSRC}/portscanner ${CFLAGS} ${WRKSRC}/portscanner.c

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/portscanner ${PREFIX}/bin

.include <bsd.port.mk>
