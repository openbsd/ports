# $OpenBSD: Makefile,v 1.14 2002/03/21 20:57:08 espie Exp $

COMMENT=	"multi-way scrolling shoot'em up for X11, addictive"

DISTNAME=	xkobo-1.11
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_XCONTRIB}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/
MASTER_SITE_SUBDIR= games

FLAVORS=harder
FLAVOR?=

.if ${FLAVOR:L} == "harder"
PATCH_LIST=patch-* extra-hard
.endif

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

ALL_TARGET=	xkobo

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
