# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:20 turan Exp $

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

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=	yes
ALL_TARGET=	xkobo

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
