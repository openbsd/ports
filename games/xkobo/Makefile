# $OpenBSD: Makefile,v 1.3 1998/11/09 01:49:59 marc Exp $
#

DISTNAME=       xkobo-1.11
CATEGORIES=	games

MAINTAINER=	espie@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR=	games

USE_IMAKE=	yes
ALL_TARGET=	xkobo

post-install: 
	@${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
