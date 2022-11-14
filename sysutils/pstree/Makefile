COMMENT =		list processes as a tree

GH_ACCOUNT =		FredHucht
GH_PROJECT =		pstree
GH_TAGNAME =		v2.40

CATEGORIES =		sysutils

# GPL
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

NO_TEST =		Yes

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o pstree pstree.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pstree ${PREFIX}/bin/pstree
	${INSTALL_MAN} ${WRKBUILD}/pstree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
