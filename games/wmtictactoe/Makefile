# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:41 espie Exp $

COMMENT=		wm-dockapp; TicTacToe game

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
REVISION =		1
CATEGORIES=		games x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
