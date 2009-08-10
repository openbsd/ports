# $OpenBSD: Makefile,v 1.13 2009/08/10 06:31:43 kili Exp $

COMMENT=		wm-dockapp; TicTacToe game

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1p0
CATEGORIES=		games x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
