# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:26 sthen Exp $

COMMENT=		wm-dockapp; TicTacToe game

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
REVISION =		2
CATEGORIES=		games x11 x11/windowmaker

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c xcb

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
