# $OpenBSD: Makefile,v 1.9 2002/09/17 14:46:06 wilfried Exp $

COMMENT=		'wm-dockapp; TicTacToe game'

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://atlas.ucpel.tche.br/~acamargo/wmtictactoe.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://atlas.ucpel.tche.br/~acamargo/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
