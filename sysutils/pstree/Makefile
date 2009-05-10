# $OpenBSD: Makefile,v 1.12 2009/05/10 14:54:22 jasper Exp $

COMMENT=		list processes as a tree
DISTNAME=		pstree-2.32
CATEGORIES=     	sysutils

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		ftp://ftp.thp.uni-duisburg.de/pub/source/

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o pstree pstree.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pstree ${PREFIX}/bin/pstree
	${INSTALL_MAN} ${FILESDIR}/pstree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
