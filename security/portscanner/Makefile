# $OpenBSD: Makefile,v 1.10 2001/05/06 03:46:13 lebel Exp $
# $FreeBSD: Makefile,v 1.5 1999/01/26 22:19:07 billf Exp $

COMMENT=	"simple and easy to use TCP port scanner"

DISTNAME=	PortScanner-1.0
PKGNAME=	portscanner-1.0
CATEGORIES=	security
NEED_VERSION=	1.402
MASTER_SITES=	http://www.ameth.org/~veilleux/ \
		http://www.FreeBSD.org/~billf/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
