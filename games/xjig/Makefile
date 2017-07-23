# $OpenBSD: Makefile,v 1.32 2017/07/23 09:26:27 espie Exp $

COMMENT=	jigsaw puzzle game for X11

DISTNAME=	xjig-2.4
REVISION =	4
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs ${COMPILER_LIBCXX} xcb

MAKE_FILE=	Makefile.Linux

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xjig
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1
	${INSTALL_DATA} ${WRKSRC}/tina.gif ${PREFIX}/share/xjig

.include <bsd.port.mk>
