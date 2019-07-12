# $OpenBSD: Makefile,v 1.24 2019/07/12 20:49:49 sthen Exp $

COMMENT =		list processes as a tree
DISTNAME =		pstree-2.39
CATEGORIES =		sysutils
HOMEPAGE =		http://www.thp.uni-duisburg.de/pstree/
REVISION =		0

# GPL
PERMIT_PACKAGE =	Yes

# uses pledge()
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
