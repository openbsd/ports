# $OpenBSD: Makefile,v 1.18 2017/10/23 17:10:50 sthen Exp $

COMMENT=		wm-dockapp; TicTacToe game

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
REVISION =		2
CATEGORIES=		games x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c xcb

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
