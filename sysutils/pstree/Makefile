# $OpenBSD: Makefile,v 1.18 2013/05/11 08:11:12 benoit Exp $

COMMENT =		list processes as a tree
DISTNAME =		pstree-2.36
CATEGORIES =		sysutils

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c 

MASTER_SITES =		ftp://ftp.thp.uni-duisburg.de/pub/source/

USE_GROFF =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o pstree pstree.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pstree ${PREFIX}/bin/pstree
	${INSTALL_MAN} ${FILESDIR}/pstree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
