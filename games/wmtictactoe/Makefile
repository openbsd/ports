# $OpenBSD: Makefile,v 1.16 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; TicTacToe game

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
REVISION =		1
CATEGORIES=		games x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
