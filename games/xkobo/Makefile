# $OpenBSD: Makefile,v 1.6 1999/12/01 13:58:57 espie Exp $

DISTNAME=	xkobo-1.11
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR= games

.if defined(HARDER)
PATCH_LIST=patch-* extra-hard
PKGNAME=${DISTNAME}-harder
.endif

MAINTAINER=	espie@openbsd.org

USE_IMAKE=	yes
ALL_TARGET=	xkobo

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
