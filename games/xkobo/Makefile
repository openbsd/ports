# $OpenBSD: Makefile,v 1.4 1999/04/30 23:29:35 brad Exp $

DISTNAME=	xkobo-1.11
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR= games

MAINTAINER=	espie@openbsd.org

USE_IMAKE=	yes
ALL_TARGET=	xkobo

post-install: 
	@${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
