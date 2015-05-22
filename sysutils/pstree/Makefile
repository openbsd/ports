# $OpenBSD: Makefile,v 1.22 2015/05/22 13:45:30 schwarze Exp $

COMMENT =		list processes as a tree
DISTNAME =		pstree-2.39
CATEGORIES =		sysutils
HOMEPAGE =		http://www.thp.uni-duisburg.de/pstree/

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
	${INSTALL_MAN} ${WRKBUILD}/pstree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
