# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:44 espie Exp $

DISTNAME=	xkobo-1.11
CATEGORIES=	games
NEED_VERSION=	1.218
MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR= games

.if defined(HARDER)
PATCH_LIST=patch-* extra-hard
PKGNAME=${DISTNAME}-harder
.endif

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_IMAKE=	Yes

ALL_TARGET=	xkobo

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
