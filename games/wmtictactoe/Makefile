# $OpenBSD: Makefile,v 1.5 2001/07/13 11:24:14 naddy Exp $

COMMENT=		'wm-dockapp; TicTacToe game'

DISTNAME=		wmtictactoe-1.1-1
PKGNAME=		wmtictactoe-1.1.1
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://atlas.ucpel.tche.br/~acamargo/wmtictactoe.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://atlas.ucpel.tche.br/~acamargo/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

WRKDIST=		${WRKDIR}/wmtictactoe.app
WRKSRC=			${WRKDIST}/wmtictactoe

.include <bsd.port.mk>
