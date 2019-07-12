# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:55 sthen Exp $

COMMENT=	DOS-XTREE(tm) look-a-like file manager

DISTNAME =	ytree-1.99
CATEGORIES=	misc

HOMEPAGE=	http://www.han.de/~werner/ytree.html

MASTER_SITES=	http://www.han.de/~werner/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses readline

ALL_TARGET=	ytree

NO_TEST=	Yes

CFLAGS+=	-DCOLOR_SUPPORT -DREADLINE_SUPPORT
LDFLAGS+=	-lreadline -lcurses
MAKE_FLAGS+=	CC=${CC} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ytree ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytree
	${INSTALL_DATA} ${WRKBUILD}/ytree.conf \
		${PREFIX}/share/examples/ytree/ytree.conf
	${INSTALL_MAN} ${WRKBUILD}/ytree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
