# $OpenBSD: Makefile,v 1.19 2013/06/04 15:22:10 schwarze Exp $

COMMENT =		list processes as a tree
DISTNAME =		pstree-2.36
REVISION =		0
CATEGORIES =		sysutils

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c 

MASTER_SITES =		ftp://ftp.thp.uni-duisburg.de/pub/source/

NO_TEST =		Yes

WRKDIST =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o pstree pstree.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pstree ${PREFIX}/bin/pstree
	${INSTALL_MAN} ${FILESDIR}/pstree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
