# $OpenBSD: Makefile,v 1.16 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"Motif minesweeper game"

DISTNAME=	xminehunter-0.4
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_MOTIF=	any

WRKDIST=	${WRKDIR}/xminehunter
ALL_TARGET=	xminehunter
FAKE_FLAGS=	INSTALL_BIN_PATH=${WRKINST}${PREFIX}/bin \
	INSTALL_SCORE_PATH=${WRKINST}${PREFIX}/lib/X11/xminehunter

NO_REGRESS=	Yes

.include <bsd.port.mk>
