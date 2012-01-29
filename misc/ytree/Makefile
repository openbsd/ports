# $OpenBSD: Makefile,v 1.13 2012/01/29 02:26:52 william Exp $
# $FreeBSD: ports/misc/ytree/Makefile,v 1.10 2000/04/30 20:15:23 steve Exp $

COMMENT=	DOS-XTREE(tm) look-a-like file manager

DISTNAME=	ytree-1.97
CATEGORIES=	misc

HOMEPAGE=	http://www.han.de/~werner/ytree.html

MASTER_SITES=	http://www.han.de/~werner/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c curses readline

ALL_TARGET=	ytree

USE_GROFF =	Yes
NO_REGRESS=	Yes

CFLAGS+=	-DCOLOR_SUPPORT -DREADLINE_SUPPORT
LDFLAGS+=	-lcompat -lreadline -lcurses
MAKE_FLAGS+=	CC=${CC} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ytree ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytree
	${INSTALL_DATA} ${WRKBUILD}/ytree.conf \
		${PREFIX}/share/examples/ytree/ytree.conf
	${INSTALL_MAN} ${WRKBUILD}/ytree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
