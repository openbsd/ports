# OpenBSD makefile for: xkobo
# Version required:     1.11
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/07/20 00:51:35 espie Exp $
#

DISTNAME=       xkobo-1.11
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR=	games

USE_IMAKE=	yes
ALL_TARGET=	xkobo

post-install: 
	@${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
