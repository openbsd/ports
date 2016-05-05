# $OpenBSD: Makefile,v 1.26 2016/05/05 19:52:28 naddy Exp $

COMMENT=	Motif minesweeper game

DISTNAME=	xminehunter-0.4
REVISION =	3
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xext Xpm Xt c m pthread-stubs stdc++ xcb Xm

LIB_DEPENDS+=	x11/motif

WRKDIST=	${WRKDIR}/xminehunter
ALL_TARGET=	xminehunter
FAKE_FLAGS=	INSTALL_BIN_PATH=${WRKINST}${PREFIX}/bin \
	INSTALL_SCORE_PATH=${WRKINST}${PREFIX}/lib/X11/xminehunter
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
