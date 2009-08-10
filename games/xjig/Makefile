# $OpenBSD: Makefile,v 1.23 2009/08/10 06:31:43 kili Exp $

COMMENT=	jigsaw puzzle game for X11

DISTNAME=	xjig-2.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}
EXTRACT_SUFX=	.tgz

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs stdc++ xcb

USE_X11=	Yes

MAKE_FILE=	Makefile.Linux

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xjig
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${PREFIX}/man/man1/xjig.1
	${INSTALL_DATA} ${WRKSRC}/tina.gif ${PREFIX}/share/xjig

.include <bsd.port.mk>
