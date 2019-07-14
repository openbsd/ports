# $OpenBSD: Makefile,v 1.34 2019/07/14 00:39:37 naddy Exp $

COMMENT=	Motif minesweeper game

DISTNAME=	xminehunter-0.4
REVISION =	7
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm Xt c m ${COMPILER_LIBCXX} xcb Xm

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS+=	x11/motif

WRKDIST=	${WRKDIR}/xminehunter
ALL_TARGET=	xminehunter
FAKE_FLAGS=	INSTALL_BIN_PATH=${WRKINST}${PREFIX}/bin \
	INSTALL_SCORE_PATH=${WRKINST}${PREFIX}/lib/X11/xminehunter
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
MAKE_FLAGS=	CFLAGS="${CXXFLAGS} -std=gnu++98 \
		-DMINE_SCORE_PATH=\\\"${LOCALBASE}/lib/X11/xminehunter\\\""

NO_TEST=	Yes

.include <bsd.port.mk>
