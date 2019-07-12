# $OpenBSD: Makefile,v 1.36 2019/07/12 20:46:27 sthen Exp $

COMMENT=	jigsaw puzzle game for X11

DISTNAME=	xjig-2.4
REVISION =	7
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

# License: BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

MAKE_FILE=	Makefile.Linux

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xjig
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1
	${INSTALL_DATA} ${WRKSRC}/tina.gif ${PREFIX}/share/xjig

.include <bsd.port.mk>
