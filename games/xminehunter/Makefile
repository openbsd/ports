# $OpenBSD: Makefile,v 1.20 2009/08/10 06:31:43 kili Exp $

COMMENT=	Motif minesweeper game

DISTNAME=	xminehunter-0.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm Xt c m pthread-stubs stdc++ xcb

USE_X11=	Yes
USE_MOTIF=	any

WRKDIST=	${WRKDIR}/xminehunter
ALL_TARGET=	xminehunter
FAKE_FLAGS=	INSTALL_BIN_PATH=${WRKINST}${PREFIX}/bin \
	INSTALL_SCORE_PATH=${WRKINST}${PREFIX}/lib/X11/xminehunter

NO_REGRESS=	Yes

.include <bsd.port.mk>
